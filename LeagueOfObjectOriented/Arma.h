//
//  Arma.h
//  LeagueOfOrientedObject
//
//  Created by GUSTAVO LUIS on 11/19/13.
//  Copyright (c) 2013 GUSTAVO LUIS. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Jogador;

@interface Arma : NSObject{
    float precisaoDoAtaque;
}
-(double) calculaForcaJogador:(Jogador *)novoJogador;

- (id) initDefault;

@end
