//
//  PackpinViewController.m
//  Widget
//
//  Created by Marius on 29/06/15.
//  Copyright (c) 2015 Packpin. All rights reserved.
//

#import "PackpinViewController.h"

@interface PackpinViewController ()

@end

@implementation PackpinViewController

@synthesize ResultsView, trackingCode, carrierCode;


- (void)setTrackingCode:(NSString*)value {
    trackingCode = value;
}

- (void)setCarrierCode:(NSString*)value {
    carrierCode = value;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString *site = [NSString stringWithFormat:@"https://button.packpin.com/v1/track_mobile?code=%@&carrier=%@&packpin-api-key=%@",
                      [self trackingCode],
                      [self carrierCode],
                      @"YourPackpinApiKey"
                      ];

    NSURL *url = [NSURL URLWithString:site];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    ResultsView.scalesPageToFit = YES;
    ResultsView.contentMode = UIViewContentModeScaleAspectFit;
    [ResultsView loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (IBAction)close:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
