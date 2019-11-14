as yet unclassified
username: uname password: pswd email: em regId: regId confirmationDeadline: deadline
	^ (self basicNew)
		initialize;
		username: uname;
		password: pswd;
		email: em;
		regId: regId;
		confirmationDeadline: deadline;
		yourself