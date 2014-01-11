as yet unclassified
setUp
	TLCachingFileStorageAdaptor initialize.
	db := TLCachingFileStorageAdaptor  name: 'LoginDefaultStorageAdaptorTestDb'.
	db deleteDatabase.
	db maxLRUSize: 2.
