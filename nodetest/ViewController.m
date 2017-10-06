//
//  ViewController.m
//  nodetest
//
//  Created by David Fekke on 10/6/17.
//  Copyright © 2017 David Fekke. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *myTextView;

@end

@implementation ViewController
@synthesize myTextView;

- (void)viewDidLoad {
    [super viewDidLoad];
    [myTextView setText:@"Press button below to activate Node.js!"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)callNode:(id)sender {
    NSString *localNodeServerURL = @"http:/127.0.0.1:3000/";
    NSURL  *url = [NSURL URLWithString:localNodeServerURL];
    NSError *err;
    NSString *versionsData = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:&err];
    if (versionsData)
    {
        [myTextView setText:versionsData];
    }
}


@end
