as yet unclassified
confirmationTimeout
	confirmationTimeout isNil ifTrue: [ confirmationTimeout := self defaultConfirmationTimeout ].
	^ confirmationTimeout