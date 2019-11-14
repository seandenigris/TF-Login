rendering
renderReset: html
	"Answer true if password reset page was rendered."
	^ resetPassword notNil
		ifTrue: [
			html render: resetPassword.
			true]
		ifFalse: [ false ]
