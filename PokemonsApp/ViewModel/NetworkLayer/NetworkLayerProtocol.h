//
//  NetworkLayerProtocol.h
//  PokemonsApp
//
//  Created by Lazzat Seiilova on 28.04.2022.
//

#import <Foundation/Foundation.h>
#import "LoaderProtocol.h"
#import "ParserProtocol.h"
#import "Pokemon.h"

@protocol NetworkLayerProtocol <NSObject>

- (instancetype)initWithLoader: (id<LoaderProtocol>)loader
                     andParser: (id<ParserProtocol>)parser;
- (void)getData: (void (^)(NSArray<Pokemon *> *, NSError *))completion;

@end
