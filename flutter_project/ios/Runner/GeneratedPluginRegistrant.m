//
//  Generated file. Do not edit.
//

#import "GeneratedPluginRegistrant.h"

#if __has_include(<dynamic_list_view/DynamicListViewPlugin.h>)
#import <dynamic_list_view/DynamicListViewPlugin.h>
#else
@import dynamic_list_view;
#endif

#if __has_include(<integration_test/IntegrationTestPlugin.h>)
#import <integration_test/IntegrationTestPlugin.h>
#else
@import integration_test;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [DynamicListViewPlugin registerWithRegistrar:[registry registrarForPlugin:@"DynamicListViewPlugin"]];
  [IntegrationTestPlugin registerWithRegistrar:[registry registrarForPlugin:@"IntegrationTestPlugin"]];
}

@end
