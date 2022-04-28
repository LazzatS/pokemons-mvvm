//
//  LoaderProtocol.h
//  PokemonsApp
//
//  Created by Lazzat Seiilova on 28.04.2022.
//

@protocol LoaderProtocol <NSObject>

- (void)loadData: (void (^)(NSData *, NSError *))completion;

@end
