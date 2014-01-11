as yet unclassified
setUp
	TLFileStorageAdaptor initialize.
	db := TLFileStorageAdaptor  name: 'LoginDefaultStorageAdaptorTestDb'.
	db deleteDatabase.

	