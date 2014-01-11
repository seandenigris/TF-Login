as yet unclassified
testRegId

	self assert: (user regId = 'xyzzy').
	user regId: 12345.
	self assert: (user regId = 12345)