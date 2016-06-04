//
//  DieLabel.h
//  Farkle
//
//  Created by Paul Lefebvre on 6/3/16.
//  Copyright © 2016 Paul Lefebvre. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DieLabel;

@protocol DieLabelDelegate <NSObject>

@end

@interface DieLabel : UILabel

@property (nonatomic,weak) id<DieLabelDelegate> delegate;

- (void)roll;

@end
