as yet unclassified
send
	username isNil
		ifFalse: [ 
			self sendPasswordResetEmailTo: username.
			self call: self passwordEmailSentComponent new ].
	self answer