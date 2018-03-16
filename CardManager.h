#import <Foundation/Foundation.h>

@interface CardManager : NSObject

#pragma mark - Main methods
+ (CardManager *) sharedCardManager;

- (void) setSelectedCard: (NSString *) newCard;
- (NSString *) getSelectedCard;

@end
