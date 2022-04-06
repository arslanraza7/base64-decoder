#import "ImageDecodePlugin.h"
#if __has_include(<image_decode/image_decode-Swift.h>)
#import <image_decode/image_decode-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "image_decode-Swift.h"
#endif

@implementation ImageDecodePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftImageDecodePlugin registerWithRegistrar:registrar];
}
@end
