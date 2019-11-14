as yet unclassified
loginComponent: aLoginComponent mailSender: aTwoArgEmailSender
	^ self basicNew
		initialize;
		loginComponent: aLoginComponent;
		emailSender: aTwoArgEmailSender;
		yourself 