//
//  ViewController.m
//  PokemonsApp
//
//  Created by Lazzat Seiilova on 28.04.2022.
//

#import "ViewController.h"
#import "ViewModel.h"

@interface ViewController ()

@property (nonatomic, strong) ViewModel *viewModel;

@end

@implementation ViewController

- (instancetype)initWithViewModel: (id<ViewModelProtocol>)viewModel {
    
    self = [super init];
    
    if (self) {
        self.viewModel = viewModel;
    }
    
    return self;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.viewModel getPokemons:^(NSArray<Pokemon *> *pokemons, NSError *error) {
        NSLog(@"we got pokemons \n %@", pokemons);
    }];
    
}


@end
