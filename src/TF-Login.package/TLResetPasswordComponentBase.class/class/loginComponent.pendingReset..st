as yet unclassified
loginComponent: aLoginComponent pendingReset: aPendingReset
	^ self basicNew
		initialize;
		loginComponent: aLoginComponent;
		pendingPasswordReset: aPendingReset;
		yourself 