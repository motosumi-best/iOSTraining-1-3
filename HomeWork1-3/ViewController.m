//
//  ViewController.m
//  HomeWork1-3
//
//  Created by 金子修一郎 on 2014/06/09.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+NiceAnimation.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    static int index;
    index++;
    if(index>=5) index=0;
    
    NSString *filename = [NSString stringWithFormat:@"%d.jpg", index];
    UIImage *img = [UIImage imageNamed:filename];
    
    self.navigationItem.rightBarButtonItem =
            [[UIBarButtonItem alloc] initWithTitle:@"Close"
            style:UIBarButtonItemStyleBordered target:self action:@selector(clickClose:)];


    UIImageView *imageView = [[UIImageView alloc] initWithImage:img];
    [self.view insertSubview:imageView atIndex:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)push:(id)sender
{
    //NSLog(@"aaaa");
    ViewController *postViewController = [[ViewController alloc] init];
    UINavigationController* navigationController = [[UINavigationController alloc] initWithRootViewController:postViewController];

    [self presentViewController:navigationController animated:YES completion:nil];
}

- (void)clickClose:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
