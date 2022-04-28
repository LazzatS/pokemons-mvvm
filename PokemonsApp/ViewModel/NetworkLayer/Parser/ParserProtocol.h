//
//  ParserProtocol.h
//  PokemonsApp
//
//  Created by Lazzat Seiilova on 28.04.2022.
//

#import <Foundation/Foundation.h>
#import "Pokemon.h"

@protocol ParserProtocol <NSObject>

- (void)parsePokemons:(NSData *)data
           completion: (void (^)(NSArray <Pokemon *> *,
                                 NSError *))completion;

@end
