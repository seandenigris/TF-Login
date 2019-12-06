as yet unclassified
fromUser: aUser regId: regId confirmationDeadline: deadline
	^ (self basicNew)
		initialize; 
		email: aUser email;
		applicationProperties: aUser applicationProperties;
		regId: regId;
		username: aUser username;
		encryptedPassword: aUser encryptedPassword;
		userId: aUser userId;
		confirmationDeadline: deadline;
		yourself.