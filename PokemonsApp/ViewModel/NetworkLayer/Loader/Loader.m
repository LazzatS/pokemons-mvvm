//
//  Loader.m
//  PokemonsApp
//
//  Created by Lazzat Seiilova on 28.04.2022.
//

#import "Loader.h"

@implementation Loader

- (void)loadData:(void (^)(NSData *, NSError *))completion {
    
    NSURL *url = [NSURL URLWithString:@"https://pokeapi.co/api/v2/pokemon/ditto"];
    
    NSError *loadError;
    NSData *data = [NSData dataWithContentsOfURL:url
                                         options:0
                                           error:&loadError];
    if (data == nil) {
        completion(nil, loadError);
    } else {
        completion(data, nil);
    }
    
}

@end
