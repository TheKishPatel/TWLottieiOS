//
//  LAAnimationTransitionController.h
//  Lottie
//
//  Created by Brandon Withrow on 1/18/17.
//  Copyright © 2017 Brandon Withrow. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

/** LAAnimationTransitionController
 *
 *  This class creates a custom UIViewController transisiton animation
 *  using a Lottie animation to transition between two view controllers
 *  The transition can use custom defined layers in After Effects for to/from
 * 
 *  When referencing After Effects layers the animator masks the to/from viewController
 *  with the referenced layer.
 *
 */

@interface LAAnimationTransitionController : NSObject <UIViewControllerAnimatedTransitioning>

/** Initializer
 
 @param NSString *animation
    The name of the Lottie Animation to load for the transition
 
 @param NSString *fromLayer
    The name of the custom layer to mask the fromVC screenshot with.
    If no layer is specified then the screenshot is added behind the Lottie Animation
 
 @param NSString *toLayer
    The name of the custom layer to mask the toVC screenshot with.
    If no layer is specified then the screenshot is added behind the Lottie Animation
    and a fade transition is performed along with the Lottie animation.

 */

- (instancetype)initWithAnimationNamed:(NSString *)animation
                        fromLayerNamed:(NSString *)fromLayer
                          toLayerNamed:(NSString *)toLayer;

@end
