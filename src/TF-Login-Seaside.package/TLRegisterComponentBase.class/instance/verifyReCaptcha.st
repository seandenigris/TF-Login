as yet unclassified
verifyReCaptcha
	^ captchaComponent isNil
		ifFalse: [ captchaComponent verify ]
		ifTrue: [ true ]