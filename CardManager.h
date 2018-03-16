#import <Foundation/Foundation.h>

@interface CardManager : NSObject

#pragma mark - Main methods
+ (CardManager *) sharedCardManager;

- (void) setSelectedCard: (NSString *) newCARD;
- (NSString *) getSelectedCard;

@end
