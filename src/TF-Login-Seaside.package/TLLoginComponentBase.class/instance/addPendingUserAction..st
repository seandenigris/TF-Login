useractions
addPendingUserAction: aPendingUserAction
	aPendingUserAction regId: self authenticationManager generateRegId.
	self authenticationManager addPendingUserAction: aPendingUserAction.
	^ self userActionConfirmationURL: aPendingUserAction regId.