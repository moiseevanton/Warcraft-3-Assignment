//
//  Barracks.m
//  
//
//  Created by Daniel Mathews on 2015-07-31.
//
//

#import "Barracks.h"
#import "Footman.h"
#import "Peasant.h"

@implementation Barracks

-(instancetype)init {
    
    self = [super init];
    
    if (self) {
        
        _gold = 1000;
        _food = 80;
        
    }
    return self;
}

-(Footman *)trainFootman {
    
    if (self.canTrainFootman) {
        Footman *f = [[Footman alloc] init];
        self.gold -= 135;
        self.food -= 2;
        return f;
    } else {
        
        return nil;
        
    }
    
}

-(BOOL)canTrainFootman {
    
    if ((self.gold < 135) || (self.food < 2)) {
        
        return NO;
        
    } else {
        
        return YES;
        
    }
    
}

-(Peasant *)trainPeasant {
    if (self.canTrainPeasant) {
        Peasant *p = [[Peasant alloc] init];
        self.gold -= 90;
        self.food -= 5;
        return p;
    } else {
        
        return nil;
        
    }
    
}

- (BOOL)canTrainPeasant {
    
    if ((self.gold < 90) || (self.food < 5)) {
        
        return NO;
        
    } else {
        
        return YES;
        
    }

    
}

@end
