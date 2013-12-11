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

@synthesize forcaMaxima,desgaste;

-(double) calculaForcaJogador:(Jogador *)novoJogador{
    srand(time(NULL));
    precisaoDoAtaque = ((rand() % 41) + 60)/100;
    if([novoJogador raca] == [Jogador ORC]){
        return ([novoJogador forcaAtaque]+(forcaMaxima-desgaste)+(forcaMaxima-desgaste)*0.1+10)*precisaoDoAtaque;
    }
    else if([novoJogador raca] == [Jogador HUMANO]){
        return ([novoJogador forcaAtaque]+(forcaMaxima-desgaste)+(forcaMaxima-desgaste)*0.1)*precisaoDoAtaque;
    }
    else if([novoJogador raca] == [Jogador ANAO]){
        return ([novoJogador forcaAtaque]+(forcaMaxima-desgaste)+5)*precisaoDoAtaque;
    }
    else if([novoJogador raca] == [Jogador ELFO]){
        return ([novoJogador forcaAtaque]+(forcaMaxima-desgaste))*precisaoDoAtaque;
    }
    else return 0;
}

@end
