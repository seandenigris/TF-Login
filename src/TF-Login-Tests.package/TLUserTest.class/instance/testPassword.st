as yet unclassified
testPassword
	self should: [ user password ] raise: MessageNotUnderstood.
	self should: [ user password: 'xxx' ] raise: MessageNotUnderstood.
	