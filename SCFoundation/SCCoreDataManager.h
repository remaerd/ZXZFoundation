//
//  SCCoreDataManager.h
//  SCFoundation
//
//  Created by Sean Cheng on 8/15/13.
//  Copyright (c) 2013 Extremely Limited. All rights reserved.
//

#import <ObjectiveRecord/CoreDataManager.h>

@interface SCCoreDataManager : CoreDataManager

@property (nonatomic,retain,readonly) NSPersistentStore* tempoaryStore;
@property (nonatomic,retain,readonly) NSPersistentStore* fileBaseStore;

- (void)prepareTempoaryStore;

@end
