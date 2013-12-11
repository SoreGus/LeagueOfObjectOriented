//
//  LeagueOfOrientedObject.h
//  LeagueOfOrientedObject
//
//  Created by GUSTAVO LUIS on 11/19/13.
//  Copyright (c) 2013 GUSTAVO LUIS. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Jogador;

@interface LeagueOfOrientedObject : NSObject{
    Jogador *player1;
    Jogador *player2;
}

@property (nonatomic,strong) Jogador *player1;
@property (nonatomic,strong) Jogador *player2;

@end
