rendering
renderRegistrationConfirmation: html

	registrationConfirmed isNil
		ifTrue: [ ^ self ].
	registrationConfirmed
		ifTrue: [ 
			(html div)
				class: 'loginconfsuccess';
				with: [ 
							html
								span: 'Your registration has been confirmed. ';
								span: 'You may now log in.' ] ]
		ifFalse: [ 
			(html div)
				class: 'loginconffailed';
				with: [ 
							html
								span: 'Your registration confirmation failed. ';
								span: 'Perhaps you waited too long to confirm after receiving the email.' ] ].
	registrationConfirmed := nil