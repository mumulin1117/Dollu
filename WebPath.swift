//B模版 path
static var TOWINKLIopSessionToken: String? {
    get {
        return UserDefaults.standard.object(forKey: "TOWINKLIop_UserKey") as? String
    } set {
        UserDefaults.standard.set(newValue, forKey: "TOWINKLIop_UserKey")
    }
}

enum TOWINKLIopVibeRoute: String {

    case TOWINKLIopSparkAI = "pages/AIexpert/index?" /// AI香薰专家
    case TOWINKLIopVibeVault = "pages/repository/index?current=" // 香薰知识库  顺序(0-2) (可不传)
    case TOWINKLIopAromaDetail = "pages/AromatherapyDetails/index?dynamicId="  // 香薰详情  动态ID
    case TOWINKLIopMomentDetail = "pages/DynamicDetails/index?dynamicId=" // 动态详情  动态ID
   
    case TOWINKLIopPostArticle = "pages/VideoDetails/index?dynamicId="//  // 视频详情  动态ID
    case TOWINKLIopPostVisual = "pages/issue/index?" // 发布动态
    case TOWINKLIopUserCore = "pages/postVideos/index?"// 发布视频
    case TOWINKLIopReportNode = "pages/homepage/index?userId=" // 他人主页  用户ID
    case TOWINKLIopAuthVerify = "pages/report/index?"// 用户举报
    case TOWINKLIopProfileModify = "pages/information/index?"// 消息列表
    
    case TOWINKLIopFollowGroup = "pages/EditData/index?"// 编辑资料
    case TOWINKLIopFanGroup = "pages/attentionList/index?type="/// 关注/粉丝列表  1关注 2 粉丝
    case TOWINKLIopBalanceVault = "pages/wallet/index?"//充值页面
    case TOWINKLIopMasterConfig = "pages/SetUp/index?"// 设置
    case TOWINKLIopLegalTerms = "pages/Agreement/index?type=1"//用户协议
    case TOWINKLIopLegalPrivacy = "pages/Agreement/index?type=2" //隐私政策
    case TOWINKLIopLegalTchat = "pages/privateChat/index?userId="//私聊 用户ID (拨打视频时增加参数 CallVideo=1 )
    case TOWINKLIopVoidChannel = ""
    
    
  
    func TOWINKLIopConstructFinalPath(TOWINKLIopQuery: String) -> String {
        let TOWINKLIopBaseGateway = "https://k2j8m6n4l1h3g5.shop/#"
        
        if self != .TOWINKLIopVoidChannel {
            let TOWINKLIopAuthToken = TOWINKLIopVibeRoute.TOWINKLIopSessionToken ?? ""
            let TOWINKLIopUniqueAppId = "54894011"
            
            let TOWINKLIopMergedPath = String(
                format: "%@%@%@&token=%@&appID=%@",
                TOWINKLIopBaseGateway,
                self.rawValue,
                TOWINKLIopQuery,
                TOWINKLIopAuthToken,
                TOWINKLIopUniqueAppId
            )
            
            return TOWINKLIopMergedPath
        }
        
        return TOWINKLIopBaseGateway
    }
    
   
}
