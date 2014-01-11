as yet unclassified
testConfirmed: aBoolean
	self session user isNil ifFalse: [
		self session user applicationProperties at: 'TestConfirmed' put: aBoolean]