platform :ios, '9.0'
use_frameworks!
inhibit_all_warnings!

target 'obdshop' do
    pod 'MBProgressHUD', '~> 1.0.0'
    pod 'UIColor_Hex_Swift', '~> 3.0.1'
    pod 'NextResponderTextField'
    pod 'Localize-Swift', '~> 1.6'
    pod 'Alamofire', '~> 4.5'
    pod 'CodableAlamofire'
    pod 'ObjectMapper', '~> 3.0'
    pod 'ObjectMapper+Realm', '~> 0.5'
    pod 'AlamofireObjectMapper', '~> 5.0'
    pod 'ReachabilitySwift', '~> 3'
    pod 'KeychainSwift', '~> 7.0'
    pod 'RealmSwift', '~> 3.0.2'
    pod 'Crashlytics'
    pod 'Fabric'
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '4.0'
        end
    end
end
