//
//  Espada.h
//  LeagueOfOrientedObject
//
//  Created by GUSTAVO LUIS on 11/19/13.
//  Copyright (c) 2013 GUSTAVO LUIS. All rights reserved.
//

#import "Arma.h"

@interface Espada : Arma{
    int forcaMaxima;
    int desgaste;
}

@property (nonatomic,assign) int forcaMaxima;
@property (nonatomic,assign) int desgaste;

-(double) calculaForcaJogador:(Jogador *)novoJogador;

@end
