//
//  ViewController.m
//  Touch
//
//  Created by 田嶋智洋 on 2015/02/14.
//  Copyright (c) 2015年 田嶋智洋. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    
    gazou[0]=[UIImage imageNamed:@"赤1.png"];
    gazou[1]=[UIImage imageNamed:@"青1.png"];
    gazou[2]=[UIImage imageNamed:@"黄色1.png"];
    gazou[3]=[UIImage imageNamed:@"紫1.png"];
    
    CGRect rect = CGRectMake(0, 0, 400, 480);
    imageView = [[UIImageView alloc]initWithFrame:rect];
    imageView.image = [UIImage imageNamed:@"044.png"];
    [self.view addSubview:imageView];
    
    //UIImage *image = [UIImage imageNamed:@"044.png"];
    //[setImage:image];
    
    number = 0;
    index = -1;
    //[imgView setImage:[number]];
    
}

-(IBAction)but1boton1:(id)sender;
{
    number=1;
    
}
-(IBAction)but1boton2:(id)sender;
{
    number=2;
}
-(IBAction)but1boton3:(id)sender;
{
    number=3;
}
-(IBAction)but1boton4:(id)sender;
{
    number=4;
}
-(IBAction)but1boton5:(id)sender;
{
    [lastpush[index] removeFromSuperview];
    index=index-1;
}
-(IBAction)but1boton6:(id)sender;
{
    UIImagePickerController *ipc = [[UIImagePickerController alloc]init];
    [ipc setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    [ipc setDelegate:self];
    [ipc setAllowsEditing:YES];
    [self presentViewController:ipc animated:YES completion:nil];
}
-(IBAction)but1boton7:(id)sender;
{
    CGRect rect = CGRectMake(0,30,320,380);
    
    UIGraphicsBeginImageContext(rect.size);
    
    [self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *capture = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    // キャプチャした画像の保存
    UIImageWriteToSavedPhotosAlbum(capture,nil,nil,nil);
    UIGraphicsEndImageContext();
    
}
-(IBAction)but1boton8:(id)sender;
{
    [lastpush[index] removeFromSuperview];
    index=index-1;

}

// フォトライブラリで、画像が選ばれたときの処理
-(void)imagePickerController:(UIImagePickerController *)picker
didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *image =[info objectForKey:UIImagePickerControllerEditedImage];
    CGRect rect = CGRectMake(0, 0, 400, 480);
    imageView.image = image;
    //[self.view addSubview:imageView];

    [self dismissViewControllerAnimated:YES completion:nil];
    
}


  //[number-1 removeFromSuperview]

//タッチされた時
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //タッチされた場所の取得
    UITouch *touch = [touches anyObject];
    CGPoint location =[touch locationInView:self.view];
    
    if(number!=0)
    {
        UIImage *image = gazou[number-1];
        UIImageView *imgView = [[UIImageView alloc] initWithImage:image];
        imgView.center = location;
        [self.view addSubview:imgView];
        index=index+1;
        lastpush[index] = imgView;
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
