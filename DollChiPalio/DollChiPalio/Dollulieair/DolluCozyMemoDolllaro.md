# Dollulieair 接入说明

本目录为独立编写的 openV3 接入实现，没有搬运模板文件或模板代码。自定义标识符沿用 Dollu 现有词汇；协议字符串暂时保留明文。应用外部仅修改 AppDelegate 的启动入口和 StoreKit 交易监听接线。

## 配置与调用

配置集中在 `DolluCozyWardrobeDollukp.swift`。

- App ID：`39972965`；接口版本：后台选择 `openV3`，不额外拼到 URL 中。
- open：`POST https://doll.n3wp67d4.link/dollu/cozyWardrobeDollukp`
- 验单：`POST https://doll.n3wp67d4.link/dollu/satinCollectionDollvelo`
- JSON 请求；请求头 `appid`、`key` 均为 `39972965`。本地账户 token 仍仅用于原业务接口。
- open 入参：`velvetTagset`（复用已有 Keychain 设备标识）、`wardrobe`（App 版本）、有值才传的 `cozyMemoDolllaro`（推送 Token）。
- 验单入参：`dollcavo`（Apple 交易号）、`ribbonDisplayDollrevo`（Base64 app receipt）、`pastelProp`（H5 回传的后台订单号）。请求不会同时提交旧的原始字段名。

平台最新字段映射（大小写与截图一致）：

| 平台含义 | 实际字段名 |
| --- | --- |
| appVersion | wardrobe |
| pushToken | cozyMemoDolllaro |
| deviceNo | velvetTagset |
| transactionId | dollcavo |
| payload | ribbonDisplayDollrevo |
| callbackResult | pastelProp |
| roomPushMsgType | cozyDolltavo |
| H5 orderCode | Silhouette |
| H5 batchNo | ribbonSnaps |
| H5 openUrl | shotDollyarafoverlin |

`cozyDolltavo` 仅为主动调用平台下发消息时使用的映射；当前客户端接收长连接消息，不会把它附加到 open 或验单请求。三个可选 Adjust 字段未配置，客户端不发送。

open 返回字段：

| 字段 | 用途 |
| --- | --- |
| laceWardrobeDollvex | 完整 H5 URL，直接使用，不追加本地 token |
| velvetStitchmapDollmexa | Ably token，兼容字符串、token 对象及该对象的 JSON 字符串 |
| ribbonSnapshotDollyara | 订阅频道 |
| laceArchiveDollmexa | WebSocket URL |

支持当前实测的原始 JSON 响应和字典/JSON 字符串形式的 data 信封。存在业务状态码时只接受字符串 `0000`。HTTP 非 2xx、错误状态、错误字段和无效配置均报错。根据当前配置，验单 HTTP 2xx 且响应严格为 `{}` 时视为成功；不能将任意非空 JSON 当成功。

## 启动与页面

1. 启动请求 open；等待分流时仅显示 `dollualungch` 背景，不显示 B 面 Logo、加载指示或连接文案。有效 H5 地址确认后才显示 B 面现有布局，并进入远程 WebView；B 面仍使用 `lacePromptDollkora` 背景。退出 B 面返回手动 Sign In 入口时也保留 B 面布局。
2. H5 字段缺失、null 或空字符串，使用已有本地账户状态进入原主页面或欢迎页。
3. 网络错误或配置残缺显示重试，不把失败误当作关闭远程入口。冷启动未确定分流时使用重试弹窗，背景保持 `dollualungch`；已确认的 B 面手动入口沿用原有错误和重试布局。
4. WebView 铺满父视图，加载和错误控件位于安全区域；支持键盘高度变化、交互式收键盘及空白处收键盘。
5. 已识别的原业务域名和 `dollu-archive://bundle` 路由继续交给 `DolluALoj`，沿用现有加密 bundle、本地身份和路由转换。远程 H5 自身保持后台返回的 URL。
6. 主框架原生桥只接受 open URL 同源页面；媒体授权由系统询问。外部链接与本地路由分别处理。
7. 登录入口和 B 面加载遮罩共用 `DolluCozyBackgroundDollnoro`：点击 Sign In 进入时，按钮在 open 请求及 H5 加载期间保持显示且不可点击；启动自动进入 B 面时不显示登录按钮。两者的 B 面背景均为 `lacePromptDollkora`。
8. WebView 首次加载期间保持隐藏；当前导航 didFinish 后，页面与加载遮罩做 0.3 秒淡入淡出，完成后隐藏遮罩并停止 loading。开启“减弱动态效果”时直接切换。没有额外固定 1 秒等待；过期导航回调不会结束当前加载状态。

## 长连接和消息

使用系统 URLSessionWebSocketTask 实现当前所需的 Ably JSON 连接与订阅流程，没有引入第三方 SDK。已实现频道检查、JSON/base64 解码、消息 ID 去重、心跳、前后台暂停恢复、指数退避重连和重取 open 配置。频道或页面来源变化时结束旧会话。

按用户最新平台配置截图，当前消息字段如下（占位符由平台替换为实际值）：

```json
{"velvetPose":"linkSuccessMessage","ribbonSnapshot":"#{h5Url}"}
{"cozyArchiveDoll":"pay","data":{"kirt":"#{orderCode}","llmivoRoute":"#{batchNo}"}}
{"gentleEnsemble":"logout"}
{"pearlEnsemble":"openBrowser","data":{"ltavo":"#{openUrl}"}}
```

- 四类事件仅读取 `cozyArchiveDoll`、`gentleEnsemble`、`pearlEnsemble`、`velvetPose`，字段和值必须对应且一条消息只能指定一种动作。已移除旧业务事件 `event/action`、Ably `name` 补事件和顶层参数兜底。支付和外链参数必须位于 `data` 中。WebSocket 和原生 JS 桥使用同一套事件识别；旧格式、未知事件和冲突事件直接忽略，不再转交页面执行。
- pay：读取消息模板中明确指定的 `llmivoRoute`（Apple 商品 ID）和 `kirt`（后台订单号）；也支持字段映射中的 `ribbonSnaps` 和 `Silhouette`。原始商品/订单字段已从接收端兜底中移除。实际下发采用模板字段还是 H5 映射字段，仍需当前平台消息联调确认；两种已提供配置均可解析。购买仍调用原 StoreKit 2 实现，验单请求改为 `dollcavo/ribbonDisplayDollrevo/pastelProp`，其中 `pastelProp` 使用解析出的后台订单号。过期 Ably 支付指令不再次自动唤起购买框。
- logout：复用 `closeDollCollectorSession()`，仅结束当前本地登录态，不删除注册记录；返回需手动点击 Sign In 的入口，避免退出后立即自动登录。
- openBrowser：从消息模板的 `data.ltavo` 或 H5 字段映射的 `data.shotDollyarafoverlin` 读取 URL，不再接受旧原始外链字段；原本地路由交给原加载器，外部 HTTP(S) 链接交给系统；外部打开结果通过 `nativeOpenState` CustomEvent 返回页面。
- linkSuccessMessage 的 `velvetPose/ribbonSnapshot` 保持原内容，通过 message 事件转交 H5；页面未就绪时先排队。不使用该消息改写 open 接口返回的页面地址。已删除旧 `ready` 消息入口，页面就绪由当前 WebView 导航的 didFinish 回调确定。
- 原生支付结果以 payResult message 事件交给当前频道页面；最终权益以后台验单和后台下发结果为准。该反向回传仍沿用现有的 `event/productId/callbackResult` 字段，不能将截图中 HTTP 入参或 H5 下发字段的映射自动套到这个独立方向；H5 是否消费该事件仍待联调。`data`、事件值、JS 桥名称和 Ably 协议字段（包括数值 action）属于当前通信协议，并非旧业务消息兼容。本地 H5 的独立处理器及原有购买逻辑不属于本次清理范围。
- Debug 日志会记录识别出的事件以及支付是否通过字段检查；过期、页面不可见、缺少商品或订单时记录原因，不打印订单值、URL、token 或票据。

## 订单和账户数据

购买使用 StoreKit 2 的 Product.purchase、Transaction.updates 和 Transaction.unfinished。购买前生成 appAccountToken 并持久化它与订单、商品及频道的关系，防止异步交易错配。对应 UserDefaults 键仅为 `Dollulieair.satinCollectionDollvelo`，不替换原账户存储。

只有 Apple 验证通过且后台验单成功才 finish 新模块交易；失败保留 unfinished，启动、回前台或用户重试时继续处理。重复订单不重复发起扣款。同一笔交易的恢复和即时购买回调会合并验单。无 appAccountToken 的原有购买仍保留旧监听的完成行为。

后台要求 app receipt，因此使用 SKReceiptRefreshRequest 取得票据；这不是改用 StoreKit 1 购买。后台恢复只读取已有票据，用户主动购买/重试时才刷新，避免应用冷启动时自行触发 Apple ID 登录框。持久化中不保存 receipt、H5 token 或完整带凭证 URL。

## 文件职责

| 文件 | 职责 |
| --- | --- |
| DolluCozyWardrobeDollukp.swift | 配置、字段映射、响应模型 |
| DolluCozyArchiveDollniva.swift | open 和验单网络请求 |
| DolluCozySilhouetteDolltavo.swift | 启动分流、原账户回退、可选推送 token |
| DolluCozyBackgroundDollnoro.swift | 登录入口与 B 面加载的共用背景、Logo、按钮和 loading |
| DolluLaceWardrobeDollvex.swift | 远程页面、事件路由、安全区域、键盘 |
| DolluRibbonSnapshotDollyara.swift | 长连接、订阅、去重与重连 |
| DolluSatinCollectionDollvelo.swift | StoreKit 2、订单关联、后台验单与恢复 |
| DolluSatinCollarDollrilo.swift | app receipt 读取与刷新 |
| DolluSageChecklistDollsero.swift | 仅 Debug 的离线协议回归检查 |

## 验证与待联调项

- 本轮移除旧业务消息兼容后，Debug、Release 模拟器构建均通过。
- 最新配置、网络解析和长连接源文件与 `DolluSageChecklistDollsero` 在独立离线入口执行 67 项检查通过，覆盖缺失地址、错误配置、状态码、凭证解析、同源检查、消息解码、当前消息模板与 H5 映射字段，并确认旧原始字段、旧事件、顶层参数和多动作消息被拒绝。另使用本地 URLProtocol 拦截实际网络层产生的三次请求，验证 open 无推送、open 有推送和验单的请求体、路径、请求头均符合配置，没有真实网络或购买操作。App 中仍可使用 Debug 启动环境 `DolluSageChecklistDollsero=1` 运行同一套协议检查。
- iPhone 17 Pro 模拟器已实际取得 open HTTP 200、加载远程 H5、连接 Ably、订阅频道并收到 linkSuccessMessage；离线检查分支可回到原生界面。
- 没有发起真实购买，也未使用虚构订单调用线上验单。尚需在匹配商品配置的沙盒账号下验证支付成功、取消、待批准、验单失败后重启恢复及 H5 权益更新。
- 推送为可选项，仅在已有通知授权时注册；真机 APNs 需要匹配签名及 Push Notifications entitlement。当前工程 entitlement 尚未配置 APNs。
- 小屏、横屏、远程 H5 的所有表单键盘交互尚未逐页实机验收。

建议联调顺序：正常启动 → 后台关闭 H5 后回原界面 → 网络断开与恢复 → H5 外链和退出 → 沙盒支付与断网恢复。不要通过改变本地用户记录模拟后台身份。
