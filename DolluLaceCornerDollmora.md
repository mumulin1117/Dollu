# Dollu 本地 H5 接入

## 加载链路

原生页面仍通过 `DolluALoj(dollRouteURL:)` 打开原有业务 URL。容器将资源包支持的路由转换为：

```text
http://dgd4lnn2zd7kwv1obw80.shop/#/pages/SetUp/index?…
  → dollu-archive://bundle/DolluLaceArchiveDollmexa.html#/pages/SetUp/index?…
  → App Bundle 中的 HTML、ES modules、CSS、字体和图片
```

`DolluLaceArchiveDollmexa` 使用 Apple 的 [WKURLSchemeHandler](https://developer.apple.com/documentation/webkit/wkurlschemehandler) 提供包内资源，不启动 HTTP 服务，也不使用私有 WebKit 设置。资源处理器只接受包内 GET/HEAD 请求，拒绝越界文件访问。

API 仍为 `http://dgd4lnn2zd7kwv1obw80.shop/api`。远端业务数据、配置、图片、视频和上传功能仍需要联网。本地包包含 21 条正式业务路由；未包含的服务端新页面与外部链接保留原来的远程加载方式。旧域名仅作为历史路由转换的识别条件，不用来请求本地页面资源。

## 资源生成

`xiangxun/` 是参考用的已编译 uni-app/Vue 分发包，原文件保持不变。新资源包为 `DollChiPalio/DollChiPalio/DolluLaceWardrobeDollvex.bundle/`，由 Xcode 同步目录自动作为完整 Bundle 复制到 App。

从项目根目录执行：

```sh
python3 DolluLacePromptDollkora.py
```

脚本重新创建入口 HTML 和启动适配脚本，为模块、样式、图片、字体分配项目词汇名称，并重写所有对应引用、Vue 样式作用域、私有 Store 名和模块依赖加载器名。图片和字体保留原始内容。服务端字段、路由名、框架公共 API 与 JS Bridge 名称保留兼容。

对主模块的适配包括：原生注入 API 地址、请求 key、稳定的初始 Bridge 映射，以及交由原生 SafeArea 处理状态栏空间。参考包版本变化后，应重新执行生成脚本和下面的检查，勿直接编辑生成后的压缩模块。

原分发包的开发调试首页包含测试登录和清空存储操作，不属于正式业务路由；生成时替换为空入口，不将这些调试操作或测试凭证打入 App。

## 登录与 JS Bridge

- 每个本地 WebView 在 document start 注入当前原生会话，初始化独立的 `laceArchiveDollmexa` Web Store。
- Token、App ID 来自当前会话；路由中的业务参数与目标用户 ID 保留。
- 同一用户保留 H5 持久化内容；切换账号时不沿用上一个用户的 H5 Store。
- `certificateAuthentic` 打开新的原生 WebView，并再次转换为本地路由。
- `ruffleEdge` 返回上一个原生控制器。
- `eyebrowArch`（登录失效）和 `paletteScheme`（退出）回到原生欢迎页，保留本地注册账号资料。
- `hairpinClip` 继续调用现有 StoreKit 流程，成功后继续调用 H5 的 `fanFold()`。
- 业务 Bridge 只接收本地页或受信业务域名的主框架消息，使用弱引用代理避免 WebView 持有页面造成循环引用。

本次未增加 H5 编辑资料到原生账号模型的同步协议，也未改变现有购买结果处理逻辑。

## 页面状态与适配

本地页面由启动脚本在 uni-app 页面内容挂载后通知原生结束加载，不再固定等待两秒。主文档/模块加载失败、Web 进程退出和加载超时可显示重试入口。

WebView 四边通过 Auto Layout 连接 SafeArea。键盘出现时缩小 WebView 实际视口，使 H5 固定底部输入区域随之上移；同时清理重复的滚动边距。点击非输入区域收起焦点。

## 验证

### 路由和资源检查

```sh
swiftc DollChiPalio/DollChiPalio/DolluLaceArchiveDollmexa.swift DolluLaceBonnetDollzora.swift -o /tmp/DolluLocalRouteChecks
/tmp/DolluLocalRouteChecks DollChiPalio/DollChiPalio/DolluLaceWardrobeDollvex.bundle
```

覆盖 21 条路由、业务参数、特殊字符 Token 编码、目标用户 ID、旧域名、相对 URL、转换幂等性、外部链接隔离和 93 个资源文件。

### 构建

```sh
xcodebuild -project DollChiPalio/DollChiPalio.xcodeproj -scheme DollChiPalio -configuration Debug -sdk iphonesimulator -destination 'generic/platform=iOS Simulator' -derivedDataPath /tmp/DolluLocalBuild CODE_SIGNING_ALLOWED=NO build
```

### 黑盒回归

1. 使用现有测试账号登录，首页点击内容卡片，确认详情显示并可以返回原生首页。
2. Me → 设置 → 反馈，确认二级跳转和逐层返回；打开键盘检查输入区域和提交按钮，测试时不提交反馈。
3. 检查编辑资料、通知、AI 入口、钱包及发布页打开正常；真实购买和发布另行使用相应测试环境验证。
4. 在不依赖已缓存资源的离线条件下打开设置页，确认页面结构可渲染；远端业务内容不可离线获取。
5. 在 SE 与 Pro Max 尺寸检查 SafeArea、键盘显示/收起和滚动。退出后确认原生欢迎页可登录原有账号。
