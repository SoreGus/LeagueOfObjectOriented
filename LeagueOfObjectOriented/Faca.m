//
//  Faca.m
//  LeagueOfObjectOriented
//
//  Created by GUSTAVO LUIS on 12/11/13.
//  Copyright (c) 2013 Vinicius Miana. All rights reserved.
//

#import "Faca.h"
#import "Jogador.h"

@implementation Faca

-(id)init{
    self = [super init];
    if(self){
        desgaste = 0;
        forca = 50;
    }
    return self;
}

@synthesize desgaste,forca;

-(double) calculaForcaJogador:(Jogador *)novoJogador{
    if(desgaste < 50) desgaste++;
    if([novoJogador raca] == [Jogador ORC]){
        return (([novoJogador forcaAtaque]+forca-desgaste)+7)*precisaoDoAtaque;
    }
    else if([novoJogador raca] == [Jogador HUMANO]){
        return (([novoJogador forcaAtaque]+forca-desgaste)+12)*precisaoDoAtaque;
    }
    else if([novoJogador raca] == [Jogador ELFO]){
        return (([novoJogador forcaAtaque]+forca-desgaste))*precisaoDoAtaque;
    }
    else if([novoJogador raca] == [Jogador ANAO]){
        return (([novoJogador forcaAtaque]+forca-desgaste)+2)*precisaoDoAtaque;
    }
    return 0;
}

- (id)initDefault {
    self = [[Faca alloc] init];
    
    [self setDesgaste:0];
    [self setForca:50];
    
    return self;
}

@end
