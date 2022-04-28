//
//  ViewModel.m
//  PokemonsApp
//
//  Created by Lazzat Seiilova on 28.04.2022.
//

#import "ViewModel.h"
#import "Loader.h"
#import "Parser.h"
#import "NetworkLayer.h"

@interface ViewModel ()

@property (nonatomic, strong) id<NetworkLayerProtocol>networkLayer;
@property (nonatomic, strong) NSArray <Pokemon *> *pokemons;

@end

@implementation ViewModel

+ (id<ViewModelProtocol>)newAlloc {
    Loader *loader = [[Loader alloc] init];
    Parser *parser = [[Parser alloc] init];
    
    NetworkLayer *networkLayer = [[NetworkLayer alloc]
                                   initWithLoader:loader
                                   andParser:parser];
    
    ViewModel *viewModel = [[ViewModel alloc]
                            initWithNetworkLayer:networkLayer];
    return viewModel;
}

- (instancetype)initWithNetworkLayer: (id<NetworkLayerProtocol>)networkLayer {
    
    self = [super init];
    
    if (self) {
        self.networkLayer = networkLayer;
        self.pokemons = @[];
    }
    
    return self;
    
}

- (void)getPokemons:(void (^)(NSArray<Pokemon *> *, NSError *))completion {
    
    [self.networkLayer getData:^(NSArray<Pokemon *> *pokemons, NSError *error) {
        
        if (pokemons != nil) {
            self.pokemons = pokemons;
        }
        
        completion(pokemons, error);
    }];
}

- (NSUInteger)numberOfItems {
    return self.pokemons.count;
}

- (Pokemon *)itemAtIndexPath: (NSIndexPath *)indexPath {
    if (indexPath.row >= self.pokemons.count) {
        return nil;
    }
    
    return self.pokemons[indexPath.row];
}

@end
