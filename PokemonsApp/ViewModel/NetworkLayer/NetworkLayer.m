//
//  NetworkLayer.m
//  PokemonsApp
//
//  Created by Lazzat Seiilova on 28.04.2022.
//

#import "NetworkLayer.h"

@interface NetworkLayer ()

@property (nonatomic, strong) id<LoaderProtocol>loader;
@property (nonatomic, strong) id<ParserProtocol>parser;


@end

@implementation NetworkLayer

- (instancetype)initWithLoader:(id<LoaderProtocol>)loader
                     andParser:(id<ParserProtocol>)parser {
    self = [super init];
    
    if (self) {
        self.loader = loader;
        self.parser = parser;
    }
    
    return self;
    
}

- (void)getData: (void (^)(NSArray<Pokemon *> *, NSError *))completion {
    
    __weak NetworkLayer *weakSelf = self;
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
        [self.loader loadData:^(NSData *data, NSError *error) {
            
            
            [weakSelf.parser parsePokemons:data
                            completion:^(NSArray<Pokemon *> *pokemons,
                                         NSError *error) {
                
                dispatch_async(dispatch_get_main_queue(), ^{
                    
                    
                    if (error == nil) {
                        completion(pokemons, nil);
                    } else {
                        completion(nil, error);
                    }
                    
                    
                });
                
                
            }];
            
        }];
    });
    
}

@end
