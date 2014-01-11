as yet unclassified
testConfirmationDeadline
	self should: [ user confirmationDeadline ] raise: MessageNotUnderstood.
	self should: [ user confirmationDeadline: 123456 ] raise: MessageNotUnderstood.
	
