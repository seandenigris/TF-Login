email-confirmation
initialRequest: aRequest 

	| regid |
	super initialRequest: aRequest.
	regid := aRequest queryFields at: 'regconfirm' ifAbsent: [ nil ].
	regid isNil ifFalse: [
		self registrationConfirmed: regid ].
	regid := aRequest queryFields at: 'reset' ifAbsent: [ nil ].
	regid isNil ifFalse: [
		(self resetConfirmed: regid)
			notNil ifTrue: [
				resetPassword := (self resetPasswordComponent loginComponent: self pendingReset: self resetConfirmed) ] ].
	regid := aRequest queryFields at: 'acctchg' ifAbsent: [ nil ].
	regid isNil ifFalse: [
		self accountChangeConfirmed: regid ].
	regid := aRequest queryFields at: 'confirm' ifAbsent: [ nil ].
	regid isNil ifFalse: [
		self userActionConfirmed: regid ].
	
	
	
	
