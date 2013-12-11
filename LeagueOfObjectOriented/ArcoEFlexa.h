//
//  ArcoEFlexa.h
//  LeagueOfOrientedObject
//
//  Created by GUSTAVO LUIS on 11/19/13.
//  Copyright (c) 2013 GUSTAVO LUIS. All rights reserved.
//

#import "Arma.h"

@interface ArcoEFlexa : Arma{
    int quantFlexas;
}

@property (nonatomic,assign) int quantFlexas;

-(double) calculaForcaJogador:(Jogador *)novoJogador;

- (id) initDefault;

@end
