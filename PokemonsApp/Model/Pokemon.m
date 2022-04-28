//
//  Pokemon.m
//  PokemonsApp
//
//  Created by Lazzat Seiilova on 28.04.2022.
//

#import "Pokemon.h"

@implementation Pokemon

- (instancetype)initWithDict:(NSDictionary *)dict {
    self = [super init];
    if (self) {
        NSDictionary *ability = dict[@"ability"];
        _name = [ability[@"name"] copy];
        _url = [ability[@"url"] copy];
    }
    
    return self;
}

@end
