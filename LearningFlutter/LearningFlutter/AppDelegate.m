//
//  AppDelegate.m
//  LearningFlutter
//
//  Created by Tony on 2021/1/17.
//

#import "AppDelegate.h"
#import <FlutterPluginRegistrant/GeneratedPluginRegistrant.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.flutterEngine = [[FlutterEngine alloc] initWithName:@"my flutter engine"];
    // Runs the default Dart entrypoint with a default Flutter route.
    [self.flutterEngine run];
    // Used to connect plugins (only if you have plugins with iOS platform code).
    [GeneratedPluginRegistrant registerWithRegistry:self.flutterEngine];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor grayColor];
    [self.window makeKeyAndVisible];
    
    MainTableViewController *tableVC = [[MainTableViewController alloc] initWithStyle:UITableViewStylePlain];
    JMNavigationController *nav = [[JMNavigationController alloc] initWithRootViewController:tableVC];
    
    self.window.rootViewController = nav;
    
    
    return [super application:application didFinishLaunchingWithOptions:launchOptions];
}



@end
