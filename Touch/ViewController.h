//
//  ViewController.h
//  Touch
//
//  Created by 田嶋智洋 on 2015/02/14.
//  Copyright (c) 2015年 田嶋智洋. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //UIImageView *imgView;
    UIImage *gazou[4];
    UIImageView *lastpush[1000];
    UIImageView *imageView;
    int gazouu;
    int number;
    int index;
    
    IBOutlet UIButton *btn1;
    IBOutlet UIButton *btn2;
    IBOutlet UIButton *btn3;
    IBOutlet UIButton *btn4;
    IBOutlet UIButton *btn5;
    IBOutlet UIButton *btn6;
    IBOutlet UIButton *btn7;
    IBOutlet UIButton *btn8;

}
-(IBAction)but1boton1:(id)sender;
-(IBAction)but1boton2:(id)sender;
-(IBAction)but1boton3:(id)sender;
-(IBAction)but1boton4:(id)sender;
-(IBAction)but1boton5:(id)sender;
-(IBAction)but1boton6:(id)sender;
-(IBAction)but1boton7:(id)sender;
-(IBAction)but1boton8:(id)sender;

- (void)configureView;
- (void)showCamera;
- (void)showPhotoLibrary;



@end

