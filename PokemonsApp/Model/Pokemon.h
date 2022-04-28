//
//  Pokemon.h
//  PokemonsApp
//
//  Created by Lazzat Seiilova on 28.04.2022.
//

#import <Foundation/Foundation.h>

@interface Pokemon : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *url;

- (instancetype)initWithDict:(NSDictionary *)dict;

@end
