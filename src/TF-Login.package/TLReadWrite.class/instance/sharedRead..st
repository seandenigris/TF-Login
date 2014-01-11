public
sharedRead: aBlock
	| blockValue |
	[
		self startSharedRead.
		blockValue := aBlock value] ensure: [ self endSharedRead ].
	^blockValue
