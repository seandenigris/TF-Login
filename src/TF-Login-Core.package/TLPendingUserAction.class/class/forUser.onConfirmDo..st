as yet unclassified
forUser: aUser onConfirmDo: aOneArgBlock
	^ (self basicNew)
		initialize;
		onConfirmDo: aOneArgBlock;
		email: aUser email;
		applicationProperties: aUser applicationProperties;
		username: aUser username;
		userId: aUser userId;
		yourself.