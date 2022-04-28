//
//  Parser.m
//  PokemonsApp
//
//  Created by Lazzat Seiilova on 28.04.2022.
//

#import "Parser.h"

@implementation Parser

- (void)parsePokemons:(NSData *)data
           completion: (void (^)(NSArray <Pokemon *> *,
                                 NSError *))completion {
    
    NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
                                                         options:kNilOptions
                                                           error:nil];
    
    NSArray *array = dict[@"abilities"];
    
    NSMutableArray<Pokemon *> *pokemons = [NSMutableArray new];
    for (NSDictionary *pokemon in array) {
        [pokemons addObject:[[Pokemon alloc] initWithDict:pokemon]];
    }
    
    for (int i = 0; i < [pokemons count]; i++) {
        NSLog(@"pokemon name = %@", pokemons[i].name);
    }
    
    completion(pokemons, nil);
}

@end
