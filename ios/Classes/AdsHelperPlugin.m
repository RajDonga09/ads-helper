#import "AdsHelperPlugin.h"
#if __has_include(<ads_helper/ads_helper-Swift.h>)
#import <ads_helper/ads_helper-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "ads_helper-Swift.h"
#endif

@implementation AdsHelperPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAdsHelperPlugin registerWithRegistrar:registrar];
}
@end
