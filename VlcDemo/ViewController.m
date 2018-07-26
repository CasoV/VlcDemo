//
//  ViewController.m
//  VlcDemo
//
//  Created by 高小伟 on 2018/7/24.
//  Copyright © 2018年 高小伟. All rights reserved.
//

#import "ViewController.h"
#import <NodeMediaClient/NodeMediaClient.h>
@interface ViewController ()
@property (nonatomic, strong) NodePlayer *np;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _np = [[NodePlayer alloc] init];
    [_np setPlayerView:self.view];
    [_np setInputUrl:@"rtsp://admin:12345@192.168.1.1/Streaming/Channels/2"];
    [_np setBufferTime:30];
    [_np setMaxBufferTime:100];
    [_np setContentMode:1];
    [_np setHwEnable:NO];
    [_np start];
}
-(void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [_np stop];
}



@end
