//
//  ViewController.m
//  3D效果盖章
//
//  Created by tangtianshi on 2017/6/1.
//  Copyright © 2017年 YH. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    BOOL isAnimation;// 是否执行了动画
}
@property (weak, nonatomic) IBOutlet UIButton *adoptButton;
@property (weak, nonatomic) IBOutlet UIImageView *adoptImage;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)adoptClick:(UIButton *)sender {
    self.adoptImage.hidden = NO;
    //[cell.contentView addSubview:self.adoptImageView];
    if (!isAnimation) {
        
        isAnimation = YES;
        self.adoptImage.layer.transform = CATransform3DMakeScale(3, 3, 3);
        [UIView animateWithDuration:0.3 animations:^{
            // self.adoptImageView.transform = CGAffineTransformIdentity;
            self.adoptImage.layer.transform = CATransform3DIdentity;
        } completion:NULL];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
