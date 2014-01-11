as yet unclassified
tearDown
	TLTester uninitialize.
	(TLCachingFileStorageAdaptor name: TLTester appName) deleteDatabase. 
	TLAuthenticationManager initialize.
	self useZincServer ifTrue: [ self server unregister ]

		
	 