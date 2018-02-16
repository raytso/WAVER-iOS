# Uncomment the next line to define a global platform for your project
# platform :ios, '11.2'

# Comment the next line if you're not using Swift and don't want to use dynamic frameworks
use_frameworks!

# Pods for waver
def common_pods
    pod 'Alamofire'
    pod 'Firebase'
    pod 'Firebase/Auth'
    pod 'Firebase/Core'
    pod 'Firebase/Database'
    pod 'Firebase/Storage'
    pod 'Firebase/Messaging'
    pod 'RxSwift', '~> 4.0'
    pod 'RxCocoa', '~> 4.0'
    pod 'RxDataSources', '~> 3.0'
    pod 'Swinject'
    pod 'SwinjectStoryboard'
end

target 'waver' do
    common_pods
end

target 'waverTests' do
    inherit! :search_paths
    common_pods
    # Pods for testing
    pod 'Nimble'
    pod 'Quick'
end

post_install do |installer|
    puts "Updating for the project and all of Pods"
    installer.pods_project.build_configuration_list.build_configurations.each do |config|
        config.build_settings['CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES'] = 'YES'
        config.build_settings['GCC_WARN_INHIBIT_ALL_WARNINGS'] = 'YES'
    end
    
    puts "Updating for the project..."
    installer.pods_project.build_configurations.each do |config|
        config.build_settings['SWIFT_SUPPRESS_WARNINGS'] = 'YES'
    end
end
