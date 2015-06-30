//
//  ViewController.m
//  Widget
//
//  Created by Marius on 29/06/15.
//  Copyright (c) 2015 Packpin. All rights reserved.
//

#import "ViewController.h"
#import "PackpinViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    PackpinViewController *vc = [segue destinationViewController];
 
    NSArray* arr = [[segue identifier] componentsSeparatedByString: @"|"];
    
//    if ([arr class] == [PackpinViewController class]) {
        [vc setTrackingCode:[arr objectAtIndex: 1]];
        [vc setCarrierCode:[arr objectAtIndex: 0]];
//    }
    
}

@end
