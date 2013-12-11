//
//  CapaInvisibilidade.h
//  LeagueOfObjectOriented
//
//  Created by LUCAS PEREIRA on 12/11/13.
//  Copyright (c) 2013 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Arma.h"

@interface CapaInvisibilidade : Arma {
    int forcaMaxima;
    int desgaste;
}

@property int forcaMaxima;
@property int desgaste;

-(double) calculaForcaJogador:(Jogador *)novoJogador;
-(void)desgastar;
- (id)initDefault;

@end
