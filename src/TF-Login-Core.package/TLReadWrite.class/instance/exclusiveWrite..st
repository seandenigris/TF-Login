public
exclusiveWrite: aBlock
	| blockValue |
	[
		self startExclusiveWrite.
		blockValue := aBlock value]
	 ensure: [self endExclusiveWrite].
	^ blockValue 
	