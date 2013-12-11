//
//  main.m
//  LeagueOfOrientedObject
//
//  Created by GUSTAVO LUIS on 11/19/13.
//  Copyright (c) 2013 GUSTAVO LUIS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jogador.h"
#import "ArmaFactory.h"

int main(){
    @autoreleasepool {
        Arma *escalibur = [ArmaFactory cria:@"e"];
        Arma *capa = [ArmaFactory cria:@"c"];
        Arma *estilete = [ArmaFactory cria:@"f"];
        Arma *arco = [ArmaFactory cria:@"a"];
        Jogador *j1 = [[Jogador alloc]initNome:@"Gandalf" comRaca:4 comArmaPrimaria:escalibur comArmaSecundaria:estilete];
        Jogador *j2 = [[Jogador alloc]initNome:@"Joel" comRaca:4 comArmaPrimaria:capa comArmaSecundaria:arco];
        [j1 ataque:j2 comArma:1];
        [j2 ataque:j1 comArma:2];
        NSLog(@"vida %@ igual: %.2f\n",[j1 nome],[j1 vida]);
        NSLog(@"vida %@ igual: %.2f",[j2 nome],[j2 vida]);
    }
}
