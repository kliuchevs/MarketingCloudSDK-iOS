public struct SFMCSdk {
    static func initializeSdk(_ config: ConfigBuilder) {
    }
    
    public let mp = SFMCSdkMP()
    public let identity = SFMCSdkIdentity()
}

public protocol MarketingCloudSDKURLHandlingDelegate {
}

public enum OperationResult: String {
    case success, error, cancelled, timeout
}

public struct SFMCSdkMP {
    init() {}
    
    func setNotificationUserInfo(_ any: Any) {}
    func setNotificationRequest(_ any: Any) {}
    func setDeviceToken(_ any: Any) {}
    func setPushEnabled(_ any: Any) {}
    func contactKey() -> String { "placeholder" }
}

public struct SFMCSdkIdentity {
    public init() {}
    public func setProfileId( _ any: Any) {}
}

public struct PushConfigBuilder {
    public init(appId: String) {}
    
    public func setAccessToken(_ token: String) -> Self { self }
    public func setMarketingCloudServerUrl(_ url: String) -> Self { self }
    public func setMid(_ something: Any) -> Self { self }
    public func setDelayRegistrationUntilContactKeyIsSet(_ flag: Bool) -> Self { self }
    public func setAnalyticsEnabled(_ flag: Bool) -> Self { self }
    public func setLocationEnabled(_ flag: Bool) -> Self { self }
    public func build() -> Self { self }
}

public struct ConfigBuilder {
    public init() {}
    
    public func setPush(config: PushConfigBuilder, completion: @escaping (OperationResult) -> Void) {
        completion(.success)
    }
}
