//
//  Espada.m
//  LeagueOfOrientedObject
//
//  Created by GUSTAVO LUIS on 11/19/13.
//  Copyright (c) 2013 GUSTAVO LUIS. All rights reserved.
//

#import "Espada.h"
#import <time.h>
#import "Jogador.h"

@implementation Espada


-(id)init {
    self = [super init];
    if (self) {
        forcaMaxima = 100;
        desgaste = 0;
    }
    return self;
}

-(double) calculaForcaJogador:(Jogador *)novoJogador{
    if([novoJogador raca] == [Jogador ORC]){
        return ([novoJogador forcaAtaque]+(forcaMaxima-desgaste)+10)*precisaoDoAtaque;
    }
    else if([novoJogador raca] == [Jogador HUMANO]){
        return ([novoJogador forcaAtaque]+(forcaMaxima-desgaste))*precisaoDoAtaque;
    }
    else if([novoJogador raca] == [Jogador ANAO]){
        return ([novoJogador forcaAtaque]+(forcaMaxima-desgaste)+5)*precisaoDoAtaque;
    }
    else if([novoJogador raca] == [Jogador ELFO]){
        return ([novoJogador forcaAtaque]+(forcaMaxima-desgaste))*precisaoDoAtaque;
    }
    else return 0;
}

-(void)desgastar {
    desgaste += 5;
}

@end
