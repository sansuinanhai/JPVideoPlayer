//
//  JPVPNetEasyTableViewCell.m
//  JPVideoPlayerDemo
//
//  Created by Memet on 2018/4/24.
//  Copyright © 2018 NewPan. All rights reserved.
//

#import "JPVPNetEasyTableViewCell.h"

@implementation JPVPNetEasyTableViewCell

- (void)setIndexPath:(NSIndexPath *)indexPath{
    _indexPath = indexPath;
    
    if (indexPath.row % 2) {
        self.videoPlayView.image = [UIImage imageNamed:@"placeholder1"];
    }
    else{
        self.videoPlayView.image = [UIImage imageNamed:@"placeholder2"];
    }
    
    [self.playButton setImage:nil forState:UIControlStateNormal];
    [self.playButton setTitle:[NSString stringWithFormat:@"%ld",(long)indexPath.row] forState:UIControlStateNormal];
    [self.playButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
}

- (IBAction)playButtonDidClick:(id)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(cellPlayButtonDidClick:)]) {
        [self.delegate cellPlayButtonDidClick:self];
    }
}

@end
