//
//  Creature.m
//  GameOfLife
//
//  Created by Michael Zamani on 8/2/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Creature.h"

@implementation Creature

- (instancetype) initCreature {
    // Since we made Creature inherit from CCSprite, 'super' below refers to CCSprite
    self = [super initWithImageNamed:@"GameOfLifeAssets/Assets/bubble.png"];
    
    if (self) {
        self.isAlive = NO;
    }
    
    return self;
}

- (void)setIsAlive:(BOOL)newState {
    // when you create an @property as we did in the .h, an instance variable with a leading underscore is automatically created
    _isAlive = newState;
    
    // 'visible' is a property of any class that inherits from CCNode. CCNode > CCSprite > Creature. So Creature has a visible property.
    self.visible = _isAlive;
}

@end
