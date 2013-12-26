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

- (IBAction)didTapSaveToCopyButton:(id)sender {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];

    // Create dir
    NSString* filesDirectory = [documentsDirectory stringByAppendingPathComponent:@"Files"];
    if (![[NSFileManager defaultManager] fileExistsAtPath:filesDirectory])
        [[NSFileManager defaultManager] createDirectoryAtPath:filesDirectory withIntermediateDirectories:NO attributes:nil error:NULL];
    
    // Save file
    NSString *myFile = [filesDirectory stringByAppendingPathComponent:@"Copy.txt"];
    [self.textView.text writeToFile:myFile atomically:YES encoding:NSUTF8StringEncoding error:NULL];
}
@end
