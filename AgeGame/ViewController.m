//
//  ViewController.m
//  AgeGame
//
//  Created by Edward Garcia on 7/20/16.
//  Copyright (c) 2016 Edward Garcia. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//variables


//outlets
@property (weak, nonatomic) IBOutlet UIImageView *WhatsAgeLogo;

@property (weak, nonatomic) IBOutlet UITextField *EnterAgeTxt;

@property (weak, nonatomic) IBOutlet UIButton *PlayBtn;


@property (weak, nonatomic) IBOutlet UIButton *PlayAgnBtn;
@property (weak, nonatomic) IBOutlet UILabel *AgeTextField;







@end

@implementation ViewController


- (IBAction)PlayBtnPressed:(UIButton *)sender {
    _WhatsAgeLogo.hidden = true;
    _EnterAgeTxt.hidden = true;
    _PlayBtn.hidden = true;
    
    _AgeTextField.hidden = false;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end