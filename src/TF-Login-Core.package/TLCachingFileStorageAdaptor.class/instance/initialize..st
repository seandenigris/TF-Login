as yet unclassified
initialize: anAppName
	super initialize: anAppName.
	self clearCache.
	self resetStatistics.
	lock := Semaphore forMutualExclusion.