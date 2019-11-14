as yet unclassified
loginComponent: aLoginComponent mailSender: aThreeArgEmailSender
	^ self basicNew
		initialize;
		loginComponent: aLoginComponent;
		emailSender: aThreeArgEmailSender;
		yourself 