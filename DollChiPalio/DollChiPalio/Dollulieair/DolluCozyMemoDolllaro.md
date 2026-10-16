# Dollulieair 接入说明

本目录为独立编写的 openV3 接入实现，没有搬运模板文件或模板代码。自定义标识符沿用 Dollu 现有词汇；协议字符串暂时保留明文。应用外部仅修改 AppDelegate 的启动入口和 StoreKit 交易监听接线。

## 配置与调用

配置集中在 `DolluCozyWardrobeDollukp.swift`，统一由 `DolluLaunchAtelierSeting.ifdebug` 选择，以配置文件当前值为准。

| `ifdebug` | 环境 | App ID | 域名 | open | 验单 |
| --- | --- | --- | --- | --- | --- |
| `false` | 当前 Dollu 自定义环境 | `39972965` | `https://doll.n3wp67d4.link` | `/dollu/cozyWardrobeDollukp` | `/dollu/satinCollectionDollvelo` |
| `true` | 平台测试环境 | `44332211` | `https://api.zwwtesttop.top` | `/app/open` | `/app/p` |

两套环境均为 JSON POST，只设置 `Content-Type: application/json`。B 请求不发送 `appid`、`key` 或本地账户 token；App ID 仅用于区分 B 面本地状态。设备标识继续复用 Keychain，不因环境切换而重新生成。

### `ifdebug == false`

| 平台含义 | 当前字段名 |
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

open 响应内容：

```json
{
  "laceWardrobeDollvex": "#{h5Url}",
  "velvetStitchmapDollmexa": "#{tokenResult}",
  "ribbonSnapshotDollyara": "#{roomId}",
  "laceArchiveDollmexa": "#{webSocketUrl}"
}
```

验单成功响应为 `{}`。

### `ifdebug == true`

| 平台含义 | 测试字段名 |
| --- | --- |
| appVersion | appVersion |
| pushToken | pushToken |
| deviceNo | deviceNo |
| transactionId | transactionId |
| payload | payload |
| callbackResult | callbackResult |
| roomPushMsgType | roomPushMsgType |
| H5 orderCode | orderCode |
| H5 batchNo | batchNo |
| H5 openUrl | openUrl |

open 响应内容：

```json
{
  "h5Url": "#{h5Url}",
  "tokenResult": "#{tokenResult}",
  "roomId": "#{roomId}",
  "webSocketUrl": "#{webSocketUrl}"
}
```

验单成功响应同样为 `{}`。

只解析当前配置约定的顶层 JSON 对象，不套用原业务接口的 `code/status/success/error` 规则，也不展开 `data/result/content` 信封。HTTP 非 2xx、非 JSON 对象和无效配置均报错；验单仅在 HTTP 2xx 且响应严格为 `{}` 时视为成功。

## 启动与页面

1. 启动请求 open；等待分流时仅显示 `dollualungch` 背景，不显示 B 面 Logo、加载指示或连接文案。有效 H5 地址确认后才显示 B 面现有布局，并进入远程 WebView；B 面仍使用 `lacePromptDollkora` 背景。退出 B 面返回手动 Sign In 入口时也保留 B 面布局。
2. H5 字段缺失、null 或空字符串时，B 模块通过启动入口提供的回调返回宿主页面；本目录不读取宿主账户状态，也不构造宿主页面。
3. 网络错误时每两秒自动重试 open，不弹出手动重试框，也不把失败误当作关闭远程入口；配置残缺仍按错误处理。
4. WebView 铺满父视图，加载和错误控件位于安全区域，并使用系统交互式收键盘行为。
5. B 面 `openBrowser` 只接受有效的 HTTP(S) 地址并使用内置浏览器打开，不识别原业务域名、`dollu-archive` 路由或宿主 WebView 控制器。
6. 远程 B 面业务指令只通过 Ably 下发，不注册 JS messageHandler；媒体与导航仍执行同源检查，外部链接由 B 面独立处理。
7. 登录入口和 B 面加载遮罩共用 `DolluCozyBackgroundDollnoro`：点击 Sign In 进入时，按钮在 open 请求及 H5 加载期间保持显示且不可点击；启动自动进入 B 面时不显示登录按钮。两者的 B 面背景均为 `lacePromptDollkora`。
8. WebView 首次加载期间保持隐藏；当前导航 didFinish 后，页面与加载遮罩做 0.3 秒淡入淡出，完成后隐藏遮罩并停止 loading。开启“减弱动态效果”时直接切换。没有额外固定 1 秒等待；过期导航回调不会结束当前加载状态。
9. B 面登录状态仅保存在 UserDefaults，键为 `Dollulieair.cozyMemoDolllaro.<appid>`：退出时写入 `false`，进入 B 且当前 H5 加载完成后写入 `true`。退出后冷启动仍请求 open 判断 A/B；若返回 B 且状态为 `false`，则停在登录入口，点击 Log In 后才再次请求 open 并加载页面。加载失败或中途关闭 App 不会提前写入 `true`。首次使用保留原自动进入流程；旧版反向退出标记仅作为尚无新状态时的读取兜底，避免升级后恢复已退出的登录态。

## 长连接和消息

使用系统 URLSessionWebSocketTask 实现当前所需的 Ably JSON 连接与订阅流程，没有引入第三方 SDK，也不再兼容非 Ably 网关信封。已实现频道检查、JSON/base64 解码、消息 ID 去重、心跳、前后台暂停恢复、指数退避重连和重取 open 配置。频道或页面来源变化时结束旧会话；Ably 断开、关闭和认证错误都会进入同一重连流程。

### 主动请求平台下发

- 复用当前环境的 open 路径，以 JSON POST 携带原有设备号、版本号、可选 push token，以及固定为整数 `2` 的操作参数。测试字段为 `roomPushMsgType`，正式字段为 `cozyDolltavo`。发送方法 `ribbonPleatDollruni()` 无需传参，仅请求后台配置的连接成功消息。普通 open、推送 token 更新和验单请求不自动携带该参数。
- 匹配频道的 Ably 订阅成功（action 11）后，单独启动请求发送类型 `2`，让平台下发已配置的“连接成功”消息。每条连接只请求一次；实际重连后重新请求。HTTP 等待不阻塞 Ably 接收，停止页面或连接时取消请求。请求失败只记录 Debug 日志，保留当前连接，下次实际重连时再尝试。
- HTTP 响应仅用于确认请求成功，不重新分流 A/B、不改登录状态、不重载 H5。实际消息仍从 Ably 接收，按当前后台事件配置处理；不在客户端伪造连接成功消息，也不假设入参映射同时作用于下行消息。
- Debug 中的 `room message request accepted` 仅表示 HTTP 2xx 且返回了 JSON 对象，不能代替 Ably 消息到达确认。平台联调需确认复用 open 路径时的实际下发及重连行为。

### 接收与处理

`ifdebug == false` 使用当前自定义消息字段（占位符由平台替换为实际值）：

```json
{"velvetPose":"linkSuccessMessage","ribbonSnapshot":"#{h5Url}"}
{"cozyArchiveDoll":"pay","data":{"kirt":"#{orderCode}","llmivoRoute":"#{batchNo}"}}
{"gentleEnsemble":"logout"}
{"pearlEnsemble":"openBrowser","data":{"ltavo":"#{openUrl}"}}
```

`ifdebug == true` 使用测试环境默认消息字段：

```json
{"event":"linkSuccessMessage","url":"#{h5Url}"}
{"event":"pay","data":{"orderCode":"#{orderCode}","batchNo":"#{batchNo}"}}
{"event":"logout"}
{"event":"openBrowser","data":{"openUrl":"#{openUrl}"}}
```

- 四类事件严格读取当前环境配置的事件字段和值，一条消息只能指定一种动作。Ably `name`、顶层参数兜底和远程 JS 桥均不参与解析。支付和外链参数必须位于当前环境的 `data` 字段中；未知事件和冲突事件直接忽略。
- pay：`false` 读取 `llmivoRoute`（Apple 商品 ID）和 `kirt`（后台订单号）；`true` 读取 `batchNo` 和 `orderCode`。购买统一调用 StoreKit 1 实现，并使用当前环境的验单字段。过期 Ably 支付指令不再次自动唤起购买框。
- logout：将 UserDefaults 中的 B 面登录状态设为 `false`，使用 WebKit 原生异步接口删除匹配当前远程 H5 站点的记录（包含 Cookie、LocalStorage、IndexedDB），完成后返回手动登录入口。不会修改宿主应用的账户状态、本地注册资料或 Keychain 设备标识。
- openBrowser：`false` 读取 `data.ltavo`，`true` 读取 `data.openUrl`；只接受外部 HTTP(S) 链接并使用 `SFSafariViewController` 内置浏览器。仅被该浏览器覆盖时保持 Ably 连接，实际切到后台仍暂停并在回前台后重连。已加载 H5 的 JavaScript 外链跳转复用同一入口；主动取消导航不会触发首页重载。
- linkSuccessMessage：`false` 使用 `velvetPose/ribbonSnapshot`，`true` 使用 `event/url`，原消息保持完整并通过 message 事件转交 H5。
- 原生支付结果以 `payResult` message 事件交给当前频道页面；两套环境当前都配置为 `event/productId/callbackResult/success/status/message/reason`。外链打开结果配置为 `event=nativeOpenState`，并携带 `state/source`。这些反向回传字段也集中在环境配置中；平台以后提供不同映射时，只修改对应环境配置。最终权益仍以后台验单和后台下发结果为准，H5 是否消费回传事件仍待联调。`data` 和 Ably 协议字段（包括数值 action）属于传输协议。
- Debug 日志记录事件及支付字段检查。验单额外打印接口 URL、交易号、原订单号、HTTP 状态和原始响应体（包括非 2xx 和非 JSON），便于区分平台拒单、空响应与解析失败；不打印请求 receipt、设备号或 open 凭证，Release 不输出这些诊断。过滤 `Dollulieair verify` 查看验单，过滤 `Dollulieair purchase result` 查看提示原因。

## 订单和账户数据

购买统一使用 StoreKit 1：`SKProductsRequest` 获取商品 → `SKMutablePayment` 加入 `SKPaymentQueue` → `SKPaymentTransactionObserver` 处理结果。B 模块不调用宿主 WebView 或其独立购买入口。

购买前保存订单、商品、频道和 UUID，再把该 UUID 设为 `applicationUsername` 以关联回调。`false` 继续使用原键 `Dollulieair.satinCollectionDollvelo`；`true` 使用独立 `.debug` 键，两套环境不混用订单。新增可选 `miniLayerDollmivo`：商品查询前为 false，提交 Apple 前持久化为 true。只释放明确未提交 Apple 的草稿；历史记录缺省、等待批准或结果不明确时，不能因为队列暂时为空就删除。

苹果交易字符串 ID 保存在 `tinyDisplayDollsovo`；历史数值字段 `satinCollarDollrilo` 仅用于兼容读取，直接转成字符串补验，不调用旧支付 API。等待原因 `tinyCoverDollmexa` 和到账标记 `satinCoatDollbop` 继续保留。收到 purchased/restored 后先落盘交易号，再把交易号、App Receipt 和原 H5 订单交给当前环境验单接口。后台确认成功、本地保存到账标记后才 `finishTransaction`；验单失败保留原订单与队列交易。

启动、回前台、用户再次点击都会检查 SKPaymentQueue 和本地已保存的待验单记录。按订单 UUID 合并在途验单，避免队列回调与本地补验同时提交。购买前按商品检查待单，新 H5 订单号不能绕过已扣款记录。存在待单时本次点击只补验并回传原订单结果，即使补验成功也不接着扣款；下一次新订单才可购买。成功结果早于 B 页创建时先排队，页面连接就绪后再交付提示与回传事件。

历史已扣款记录若不在 SKPaymentQueue 中，仍使用保存的交易号和 App Receipt 补验，后台成功后保存到账状态；没有 SKPaymentTransaction 对象时不能调用 finishTransaction。若该历史交易尚未包含于 App Receipt，客户端不能仅凭交易号解决平台验单失败，也不会擅自清除待单。需要平台核对原交易，或其后取得包含该交易的票据再补验。

已购买待验单显示 `Purchase Processing`，提示购买已完成、正在确认余额、请勿重复购买；苹果 `.deferred` 显示 `Awaiting Approval`，结果不确定显示 `Purchase Unconfirmed`。连续点击且 Apple 尚未返回结果时使用 `Purchase in Progress`，与验单中的 `Purchase Processing` 区分。状态提示保留现有样式并在两秒后自动消失。商品无效、购买限制、取消和失败均沿用原提示及 H5 回传字段。

后台仍需保证同一苹果交易和原订单重复验单只发币一次，已到账的重试返回成功。客户端不将普通冲突错误当作成功；后台发币成功但响应丢失依赖平台幂等处理。

新购买优先读取系统更新的 App Receipt，只有缺失时才允许刷新；手动补验强制刷新；后台恢复始终只读，避免冷启动触发 Apple ID 登录框。共用刷新任务只等待完成，每个调用随后重新读取文件，不缓存旧票据 Data。持久化不保存 receipt、H5 token 或完整带凭证 URL。

商品查询开始后购买入口持续等待 Apple 返回 purchased、failed 或 deferred，再统一释放购买状态并关闭 loading；重复点击不会另开购买或提前关闭首单 loading。商品查询成功/失败共用请求校验和订单读取处理；未到账记录统一筛选。指定商品的补验只等待该商品任务，多笔强制重试先启动再统一等待，避免被无关商品阻塞。补验任务已经回传结果时，购买入口不再次重复发送 pending。已到账订单仅供幂等判断，不参与同商品待单拦截；明确取消/失败且没有交易号的记录仍会清理。

## 文件职责

| 文件 | 职责 |
| --- | --- |
| DolluCozyWardrobeDollukp.swift | 配置、字段映射、响应模型 |
| DolluCozyArchiveDollniva.swift | open 和验单网络请求 |
| DolluCozySilhouetteDolltavo.swift | 启动分流、宿主回调、可选推送 token |
| DolluCozyBackgroundDollnoro.swift | 登录入口与 B 面加载的共用背景、Logo、按钮和 loading |
| DolluLaceWardrobeDollvex.swift | 远程页面、事件路由、安全区域 |
| DolluRibbonSnapshotDollyara.swift | 长连接、订阅、去重与重连 |
| DolluSatinCollectionDollvelo.swift | StoreKit 1、订单关联、后台验单与恢复 |
| DolluSatinCollarDollrilo.swift | app receipt 读取与刷新 |

## 验证与待联调项

- 2026-10-15 最新验证：购买协调器 105 项检查、票据读取/刷新 14 项检查、验单响应日志 12 项检查通过（均为源码派生测试，隔离存储/StoreKit/网络替身，无真实扣款）；覆盖连续点击、loading 生命周期、所有 Apple 回调释放路径、已到账单不阻断、原交易补验及非 2xx/非 JSON 响应日志。Debug 真机、Debug/Release 模拟器构建通过，不能用这些结果代替真实沙盒到账验证。
- 本轮移除旧业务消息兼容后，Debug、Release 模拟器构建均通过。
- iPhone 17 Pro 模拟器已实际取得 open HTTP 200、加载远程 H5、连接 Ably、订阅频道并收到 linkSuccessMessage；离线检查分支可回到原生界面。
- 真机此前出现过 Apple 沙盒交易号未包含在 App Receipt、平台返回 transaction id not in the transaction list 的问题。最新真机日志记录了连续三笔新购买验单 HTTP 200、响应 {}，并保存 verified；第四笔因网络连接中断（-1005）保留待验单。取消、待批准、该笔断网恢复及 H5 权益实际到账仍需继续核对；本轮精简通过离线回归和编译，不能据此宣称全部真机场景已验收。
- 推送为可选项，在 B 面 H5 首次加载成功后申请授权并注册；当前 entitlement 为 development，正式发布仍需匹配 Distribution 签名与生产 APNs 配置。
- 小屏、横屏、远程 H5 的所有表单键盘交互尚未逐页实机验收。

建议联调顺序：正常启动 → 后台关闭 H5 后回原界面 → 网络断开与恢复 → H5 外链和退出 → 沙盒支付与断网恢复。不要通过改变本地用户记录模拟后台身份。
