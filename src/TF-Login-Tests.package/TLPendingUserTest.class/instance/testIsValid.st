as yet unclassified
testIsValid
	self assert: (user isValid).
	user confirmationDeadline: (self deadlineSecs: -1).
	self deny: (user isValid)