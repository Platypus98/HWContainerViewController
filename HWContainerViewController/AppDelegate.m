//
//  AppDelegate.m
//  HWContainerViewController
//
//  Created by Ilya on 26/05/2019.
//  Copyright © 2019 Ilya. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    ViewController *horizontalSplitController = [ViewController new];
    horizontalSplitController.tabBarItem.title = @"Horizontal split";
    [horizontalSplitController.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIFont fontWithName:@"Helvetica" size:20.0], NSFontAttributeName, nil] forState:UIControlStateNormal];
    
    //Верхний контроллер
    ViewController *topController = [ViewController new];
    [horizontalSplitController addChildViewController:topController];
    [horizontalSplitController.view addSubview:topController.view];
    [topController didMoveToParentViewController:horizontalSplitController];
    topController.view.frame = CGRectMake(0, 0, horizontalSplitController.view.frame.size.width, horizontalSplitController.view.frame.size.height/2);
    topController.view.backgroundColor = [UIColor redColor];
    
    UILabel *topFirst = [[UILabel alloc]initWithFrame:CGRectMake(topController.view.frame.size.width/2 - 50, topController.view.frame.size.height/2 - 13, 100, 26)];
    topFirst.text = @"1";
    topFirst.font = [UIFont systemFontOfSize:30.0];
    topFirst.textAlignment = NSTextAlignmentCenter;
    [topController.view addSubview:topFirst];
    
    //Нижний контроллер
    ViewController *bottomController = [ViewController new];
    [horizontalSplitController addChildViewController:bottomController];
    [horizontalSplitController.view addSubview:bottomController.view];
    [bottomController didMoveToParentViewController:horizontalSplitController];
    bottomController.view.frame = CGRectMake(0, horizontalSplitController.view.frame.size.height/2, horizontalSplitController.view.frame.size.width, horizontalSplitController.view.frame.size.height/2);
    bottomController.view.backgroundColor = [UIColor blueColor];
    
    UILabel *bottomSecond = [[UILabel alloc]initWithFrame:CGRectMake(bottomController.view.frame.size.width/2 - 50, bottomController.view.frame.size.height/2 - 13, 100, 26)];
    bottomSecond.text = @"2";
    bottomSecond.font = [UIFont systemFontOfSize:30.0];
    bottomSecond.textAlignment = NSTextAlignmentCenter;
    [bottomController.view addSubview:bottomSecond];
    
    
    ViewController *verticalSplitController = [ViewController new];
    verticalSplitController.tabBarItem.title = @"Vertical split";
    [verticalSplitController.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIFont fontWithName:@"Helvetica" size:20.0], NSFontAttributeName, nil] forState:UIControlStateNormal];
    
    //Левый контроллер
    ViewController *leftController = [ViewController new];
    [verticalSplitController addChildViewController:leftController];
    [verticalSplitController.view addSubview:leftController.view];
    [leftController didMoveToParentViewController:verticalSplitController];
    leftController.view.frame = CGRectMake(0, 0, verticalSplitController.view.frame.size.width/2, verticalSplitController.view.frame.size.height);
    leftController.view.backgroundColor = [UIColor redColor];
    
    UILabel *leftFirst = [[UILabel alloc]initWithFrame:CGRectMake(leftController.view.frame.size.width/2 - 10, leftController.view.frame.size.height/2 - 13, 20, 26)];
    leftFirst.text = @"1";
    leftFirst.font = [UIFont systemFontOfSize:30.0];
    leftFirst.textAlignment = NSTextAlignmentCenter;
    [leftController.view addSubview:leftFirst];
    
    
    //Правый контроллер
    ViewController *rightController = [ViewController new];
    [verticalSplitController addChildViewController:rightController];
    [verticalSplitController.view addSubview:rightController.view];
    [rightController didMoveToParentViewController:verticalSplitController];
    rightController.view.frame = CGRectMake(verticalSplitController.view.frame.size.width/2, 0, verticalSplitController.view.frame.size.width/2, verticalSplitController.view.frame.size.height);
    rightController.view.backgroundColor = [UIColor blueColor];
    
    UILabel *secondRight = [[UILabel alloc]initWithFrame:CGRectMake(rightController.view.frame.size.width/2 - 10, rightController.view.frame.size.height/2 - 13, 20, 26)];
    secondRight.text = @"2";
    secondRight.font = [UIFont systemFontOfSize:30.0];
    secondRight.textAlignment = NSTextAlignmentCenter;
    [rightController.view addSubview:secondRight];
    
    
    UITabBarController *tabBarController = [UITabBarController new];
    tabBarController.viewControllers = @[horizontalSplitController, verticalSplitController];
    self.window.rootViewController = tabBarController;
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
