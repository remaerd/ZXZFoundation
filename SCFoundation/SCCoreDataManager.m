//
//  SCCoreDataManager.m
//  SCFoundation
//
//  Created by Sean Cheng on 8/15/13.
//  Copyright (c) 2013 Extremely Limited. All rights reserved.
//

#import "SCCoreDataManager.h"

@implementation SCCoreDataManager
@synthesize fileBaseStore = _fileBaseStore;
@synthesize tempoaryStore = _tempoaryStore;

- (void)prepareTempoaryStore
{
	NSError* error;
	
//	Delete PersistentStores if existed.
	if ([self.persistentStoreCoordinator.persistentStores count] != 0) {
		_fileBaseStore = (NSPersistentStore*)(self.persistentStoreCoordinator.persistentStores[0]);
	} else {
		NSURL* url = [self.applicationDocumentsDirectory URLByAppendingPathComponent:[self databaseName]];
		_fileBaseStore = [self.persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:url options:nil error:&error];
		if (error) NSLog(@"%@",error);
	}
	
	_tempoaryStore = [self.persistentStoreCoordinator addPersistentStoreWithType:NSInMemoryStoreType configuration:nil URL:nil options:nil error:&error];
	if (error) NSLog(@"%@",error);
}

@end
