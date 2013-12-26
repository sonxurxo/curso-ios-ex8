//
//  ViewController.m
//  Ex8
//
//  Created by Xurxo Méndez Pérez on 26/12/13.
//  Copyright (c) 2013 SmartGalApps. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSBundle *mainBundle = [NSBundle mainBundle];
    NSString *myFile = [mainBundle pathForResource: @"File" ofType: @"txt"];
    NSString* content = [NSString stringWithContentsOfFile:myFile
                                                  encoding:NSUTF8StringEncoding
                                                     error:NULL];
    NSLog(@"- %@", content);
    self.textView.text = content;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
