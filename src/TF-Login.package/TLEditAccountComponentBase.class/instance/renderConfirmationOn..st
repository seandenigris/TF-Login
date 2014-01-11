rendering
renderConfirmationOn: html

	emailResult
		ifTrue: [ 
			html render: (self accountChangeSubmittedComponent new onAnswer: [ self answer ]) ]
		ifFalse: [ 
			html render: (self accountChangeSubmitFailedComponent new onAnswer: [ self answer ]) ].
	self reset.
