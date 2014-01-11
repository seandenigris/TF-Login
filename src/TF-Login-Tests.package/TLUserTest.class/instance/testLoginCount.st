as yet unclassified
testLoginCount
	self assert: (user loginCount = 0).
	user loginCount: 42.
	self assert: (user loginCount = 42).
	