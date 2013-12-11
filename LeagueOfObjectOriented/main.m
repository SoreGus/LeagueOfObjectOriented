//
//  main.m
//  LeagueOfOrientedObject
//
//  Created by GUSTAVO LUIS on 11/19/13.
//  Copyright (c) 2013 GUSTAVO LUIS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jogador.h"
#import "Espada.h"

int main(){
    @autoreleasepool {
        Espada *escalibur = [Espada new];
        [escalibur setForcaMaxima:10];
        [escalibur setDesgaste:0];
        Jogador *j1 = [[Jogador alloc]initNome:@"Gandalf" comRaca:4 comVida:100 comForcaEscudo:10 comForcaAtaque:10 comForcaDefesa:10 comArmaPrimaria:escalibur];
        Jogador *j2 = [[Jogador alloc]initNome:@"Joel" comRaca:4 comVida:100 comForcaEscudo:10 comForcaAtaque:10 comForcaDefesa:10 comArmaPrimaria:escalibur];
        NSLog(@"vida %@ igual: %.2f\n",[j2 nome],[j2 vida]);
        [j2 setVida:[j2 vida]-[j1 ataque:j2]];
        NSLog(@"vida %@ igual: %.2f",[j2 nome],[j2 vida]);
        NSLog(@"%.2f",[j1 ataque:j2]);
    }
}
