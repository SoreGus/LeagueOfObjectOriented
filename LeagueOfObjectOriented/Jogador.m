//
//  Jogador.m
//  LeagueOfOrientedObject
//
//  Created by GUSTAVO LUIS on 11/19/13.
//  Copyright (c) 2013 GUSTAVO LUIS. All rights reserved.
//

#import "Jogador.h"
#import "Arma.h"

@implementation Jogador

static const int ELFO = 1;
static const int ORC = 2;
static const int ANAO = 4;
static const int HUMANO = 8;

@synthesize nome,vida,forcaEscudo,raca,forcaAtaque,forcaDefesa;

+(int)HUMANO{return HUMANO;}
+(int)ELFO{return ELFO;}
+(int)ANAO{return ANAO;}
+(int)ORC{return ORC;}


-(id)initNome:(NSString*)n comRaca:(int)r comArmaPrimaria:(Arma *)a comArmaSecundaria:(Arma *)b{
    nome = n;
    raca = r;
    vida = 1000;
    forcaEscudo = 100;
    forcaAtaque = 100;
    forcaDefesa = 100;
    armaPrimaria = a;
    armaSecundaria = b;
    return self;
}

-(float)ataque:(Jogador*)adversario comArma:(int)a{
    if(a == 1)
    return [self sofreAtaque:adversario comForca:[armaPrimaria calculaForcaJogador:self]];
    else
    return [self sofreAtaque:adversario comForca:[armaSecundaria calculaForcaJogador:self]*0.8];
}


-(float)sofreAtaque:(Jogador *)adversario comForca:(double)forca{
    float dano = 0;
    if([adversario raca] == ORC){
        dano = forca - ((([adversario forcaDefesa]*rand()%101)/100) + 5 + [adversario forcaEscudo]);
    }
    else if([adversario raca] == ANAO || [adversario raca] == HUMANO){
        dano = forca - ((([adversario forcaDefesa]*rand()%101)/100) + 15 + [adversario forcaEscudo]);
    }
    else if([adversario raca] == ELFO){
        dano = forca - ((([adversario forcaDefesa]*rand()%101)/100) + 10 + [adversario forcaEscudo]);
    }
    [adversario setForcaEscudo:[adversario forcaEscudo] - 1];
    if(dano < 0) return 0;
    [adversario setVida:[adversario vida] - dano];
    return dano;
}

@end
