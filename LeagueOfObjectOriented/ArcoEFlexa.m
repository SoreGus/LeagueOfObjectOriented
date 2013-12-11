//
//  ArcoEFlexa.m
//  LeagueOfOrientedObject
//
//  Created by GUSTAVO LUIS on 11/19/13.
//  Copyright (c) 2013 GUSTAVO LUIS. All rights reserved.
//

#import "ArcoEFlexa.h"
#import "Jogador.h"

@implementation ArcoEFlexa

@synthesize quantFlexas;

-(id)init {
    self = [super init];
    if (self) {
        quantFlexas = 100;
    }
    return self;
}

-(double) calculaForcaJogador:(Jogador *)novoJogador{
    if(quantFlexas > 0){
        quantFlexas--;
        if([novoJogador raca] == [Jogador ORC]) {
            return ([novoJogador forcaAtaque]+10)*precisaoDoAtaque;
        }
        else if([novoJogador raca] == [Jogador HUMANO]) {
            return [novoJogador forcaAtaque]*precisaoDoAtaque;
        }
        else if([novoJogador raca] == [Jogador ANAO]) {
            return ([novoJogador forcaAtaque]+5)*precisaoDoAtaque;
        }
        else if([novoJogador raca] == [Jogador ELFO]) {
            return ([novoJogador forcaAtaque]+[novoJogador forcaAtaque]*0.1)*precisaoDoAtaque;
        }
        else return 0;
    }
    else return 0;
}

@end
