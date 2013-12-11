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

-(double) calculaForcaJogador:(Jogador *)novoJogador;
-(void)desgastar;
@end
