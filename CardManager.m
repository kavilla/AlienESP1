#import "CardManager.h"

@implementation CardManager

static HTTPManager *sharedCardManager = nil;

static NSString * selectedCard = @"";

+ (CardManager *) sharedCardManager {
    if (sharedCardManager == nil) {
        sharedCardManager = [[super allocWithZone:NULL] init];
    }
    return sharedCardManager;
}

- (void) setSelectedCard: (NSString *) newCard {
    selectedCard = newCard;
}

- (NSString *) getSelectedCard {
    return selectedCard;
}

@end
