as yet unclassified
testUnimplemented
	self should: [user lastLogin] raise: Error.
	self should: [user lastLogin: DateAndTime now] raise: Error.
	self should: [user lastLoginFrom] raise: Error.
	self should: [user lastLoginFrom: '127.0.0.1'] raise: Error.
	