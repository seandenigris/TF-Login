rendering
renderLoginDisallowed: html
	^ self loginDisallowed isNil not
		ifTrue: [
			authenticationError := false.
			html div
				class: 'autherror';
				with: self loginDisallowed.
			true]
		ifFalse: [ false ]
