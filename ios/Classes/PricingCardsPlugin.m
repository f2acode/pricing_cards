#import "PricingCardsPlugin.h"
#if __has_include(<pricing_cards/pricing_cards-Swift.h>)
#import <pricing_cards/pricing_cards-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "pricing_cards-Swift.h"
#endif

@implementation PricingCardsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPricingCardsPlugin registerWithRegistrar:registrar];
}
@end
