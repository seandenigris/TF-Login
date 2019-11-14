rendering
renderAccountChangeConfirmation: html

	accountChangeConfirmed isNil
		ifTrue: [ ^ self ].
	accountChangeConfirmed
		ifTrue: [ 
			(html div)
				class: 'loginconfsuccess';
				with: [ 
							html
								span: 'Your account changes have been confirmed. ';
								span: 'You may now log in.' ] ]
		ifFalse: [ 
			(html div)
				class: 'loginconffailed';
				with: [ 
							html
								span: 'Your account change confirmation failed. ';
								span: 'Perhaps you waited too long to confirm after receiving the email.' ] ].
	accountChangeConfirmed := nil