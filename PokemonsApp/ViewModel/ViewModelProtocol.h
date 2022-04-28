//
//  ViewModelProtocol.h
//  PokemonsApp
//
//  Created by Lazzat Seiilova on 28.04.2022.
//

#import "Foundation/Foundation.h"
#import "NetworkLayerProtocol.h"

@protocol ViewModelProtocol <NSObject>

+ (id<ViewModelProtocol>)newAlloc;
- (instancetype)initWithNetworkLayer: (id<NetworkLayerProtocol>)networkLayer;
- (void)getPokemons: (void (^)(NSArray <Pokemon *> *, NSError *))completion;

@end
