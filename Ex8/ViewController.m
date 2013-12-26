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

    NSString *url = @"http://www.mujerstyle.com/wp-content/uploads/2013/01/casadibujo.png";
    NSData *imageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:url]];
    self.imageView.image = [UIImage imageWithData:imageData];
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
    NSString *myFile = [filesDirectory stringByAppendingPathComponent:@"Casa.png"];
    
    NSData *data = [NSData dataWithData:UIImagePNGRepresentation(self.imageView.image)];
	[data writeToFile:myFile atomically:YES];
    
//    [self.imageView.image writeToFile:myFile atomically:YES encoding:NSUTF8StringEncoding error:NULL];
}
@end
