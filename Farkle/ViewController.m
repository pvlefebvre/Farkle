//
//  ViewController.m
//  Farkle
//
//  Created by Paul Lefebvre on 6/3/16.
//  Copyright © 2016 Paul Lefebvre. All rights reserved.
//

#import "ViewController.h"
#import "DieLabel.h"

@interface ViewController ()<DieLabelDelegate>
@property (nonatomic,strong) IBOutletCollection(DieLabel) NSArray *dies;
@property NSMutableArray *dice;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)onRollButtonPressed:(id)sender {
    for (DieLabel *die in self.dies) {
        [die roll];
        die.delegate = self;
    }
    
}

@end
