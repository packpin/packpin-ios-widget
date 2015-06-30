//
//  PackpinViewController.h
//  Widget
//
//  Created by Marius on 29/06/15.
//  Copyright (c) 2015 Packpin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PackpinViewController : UIViewController

@property (strong, nonatomic) NSString *carrierCode;
@property (strong, nonatomic) NSString *trackingCode;
@property (weak, nonatomic) IBOutlet UIWebView *ResultsView;

@end
