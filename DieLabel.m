//
//  DieLabel.m
//  Farkle
//
//  Created by Paul Lefebvre on 6/3/16.
//  Copyright © 2016 Paul Lefebvre. All rights reserved.
//

#import "DieLabel.h"

@interface DieLabel ()

@end

@implementation DieLabel

-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
    self.gestureRecognizers = @[tap];
    
    return self;
}

- (void)handleTap:(UITapGestureRecognizer *)recognizer{
    NSLog(@"WHAT");
}

- (void)roll{
    int random = arc4random_uniform(6)+1;
    self.text = [NSString stringWithFormat:@"%i",random];
}
@end
