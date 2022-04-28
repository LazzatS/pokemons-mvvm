//
//  ViewController.h
//  PokemonsApp
//
//  Created by Lazzat Seiilova on 28.04.2022.
//

#import <UIKit/UIKit.h>
#import "ViewModelProtocol.h"

@interface ViewController : UIViewController

- (instancetype)initWithViewModel: (id<ViewModelProtocol>)viewModel;

@end

