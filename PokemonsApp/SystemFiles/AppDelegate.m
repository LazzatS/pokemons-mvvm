//
//  AppDelegate.m
//  PokemonsApp
//
//  Created by Lazzat Seiilova on 28.04.2022.
//

#import "AppDelegate.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    UIViewController *rootVC = [self configureRootViewController];
    UINavigationController *nav = [self setupNavControllerWithRootVC:rootVC];
    
    self.window = [self setupWindowWithRootVC:nav];
    
    return YES;
}

- (UIViewController *)configureRootViewController {
    
    ViewModel *viewModel = [ViewModel newAlloc];
    
    ViewController *pokemonsVC = [[ViewController alloc]
                                  initWithViewModel:viewModel];
    
    return pokemonsVC;
}

- (UINavigationController *)setupNavControllerWithRootVC: (UIViewController *)rootVC {
    UINavigationController *nav = [[UINavigationController alloc]
                                    initWithRootViewController:rootVC];
    nav.navigationBar.backgroundColor = [UIColor systemBackgroundColor];
    return nav;
}

- (UIWindow *)setupWindowWithRootVC: (UIViewController *)rootVC {
    UIWindow *window = [[UIWindow alloc]
                        initWithFrame:[[UIScreen mainScreen] bounds]];
    window.backgroundColor = [UIColor systemBackgroundColor];
    [window setRootViewController:rootVC];
    [window makeKeyAndVisible];
    
    return window;
}


@end
