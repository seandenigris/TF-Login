as yet unclassified
testIncrementLoginCount
	user loginCount: 1.
	user incrementLoginCount.
	self assert: (user loginCount = 2)