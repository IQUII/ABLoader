//
//  ViewController.m
//  ABLoader
//
//  Created by Paolo Musolino on 06/07/15.
//  Copyright (c) 2015 IQUII. All rights reserved.
//

#import "ExampleViewController.h"
#import "ABLoaderView.h"
#import <MBProgressHUD/MBProgressHUD.h>

@interface ExampleViewController ()

@end

@implementation ExampleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    ABLoaderView *spinner = [[ABLoaderView alloc] initWithImage:[UIImage imageNamed:@"iquii_square_white.png"]spinnerSize:80.0f animDuration:0.8];
    
    
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    hud.square = NO;
    hud.mode = MBProgressHUDModeCustomView;
    hud.color=[UIColor clearColor];
    hud.customView = spinner;
    hud.backgroundColor=[UIColor colorWithWhite:0 alpha:0.6f];
  //  hud.labelText = NSLocalizedString(@"Loading...", @"Loading");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
//    sleep(10);
//    [MBProgressHUD hideHUDForView:self.view animated:YES];
}



@end
