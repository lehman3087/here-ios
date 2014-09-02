//
//  HEREAudioPlayerView.m
//  here clone
//
//  Created by Joseph Cheung on 28/8/14.
//  Copyright (c) 2014 Reque.st. All rights reserved.
//

#import "HEREAudioPlayerView.h"
#import <AVFoundation/AVFoundation.h>
#import "JSQMessage.h"
#import "HEREAudioHelper.h"

@interface HEREAudioPlayerView ()

@property (strong, nonatomic) UILabel *durationLabel;
@property (strong, nonatomic) UIImageView *animationContainer;

@end

@implementation HEREAudioPlayerView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        _incomingMessage = YES;
        
        _durationLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _durationLabel.textAlignment = NSTextAlignmentCenter;
        _durationLabel.font = [UIFont systemFontOfSize:12];
        [self addSubview:_durationLabel];
        
        _animationContainer = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"audio_normal"] highlightedImage:[UIImage imageNamed:@"audio_press"]];
        _animationContainer.frame = CGRectZero;
        _animationContainer.userInteractionEnabled = YES;
        _animationContainer.animationImages = @[[UIImage imageNamed:@"audio_play_0"],
                                                [UIImage imageNamed:@"audio_play_1"],
                                                [UIImage imageNamed:@"audio_play_2"],
                                                [UIImage imageNamed:@"audio_normal"]];
        _animationContainer.animationDuration = 1.f;
        [self addSubview:_animationContainer];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    if (self.incomingMessage) {
        self.durationLabel.frame = CGRectMake(30, (CGRectGetHeight(self.bounds) - CGRectGetHeight(self.durationLabel.bounds)) / 2, CGRectGetWidth(self.durationLabel.bounds), CGRectGetHeight(self.durationLabel.bounds));
        self.animationContainer.frame = CGRectMake(CGRectGetMaxX(self.durationLabel.frame), CGRectGetMinY(self.durationLabel.frame) - 10, 34, 34);
    }
    else {
        self.animationContainer.frame = CGRectMake(10, (CGRectGetHeight(self.bounds) - 34) / 2, 34, 34);
        self.durationLabel.frame = CGRectMake(CGRectGetMaxX(self.animationContainer.frame), (CGRectGetHeight(self.bounds) - CGRectGetHeight(self.durationLabel.bounds)) / 2, CGRectGetWidth(self.durationLabel.bounds), CGRectGetHeight(self.durationLabel.bounds));
    }
}

- (void)setMessage:(JSQMessage *)message
{
    if (_message != message) {
        
        NSInteger duration = lroundf([HEREAudioHelper durationFromAudioFileURL:message.sourceURL]);
        self.durationLabel.text = [NSString stringWithFormat:@"%tu\"", duration];
        [self.durationLabel sizeToFit];
        
        _message = message;
    }
}

- (void)setIncomingMessage:(BOOL)incomingMessage
{
    if (_incomingMessage != incomingMessage) {
        
        self.animationContainer.transform = incomingMessage ? CGAffineTransformIdentity : CGAffineTransformMakeRotation(M_PI);
        
        _incomingMessage = incomingMessage;
    }
}

- (void)startAnimation
{
    [self.animationContainer startAnimating];
}

- (void)stopAnimation
{
    [self.animationContainer stopAnimating];
}

- (BOOL)isAnimating
{
    return [self.animationContainer isAnimating];
}

@end