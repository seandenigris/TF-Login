as yet unclassified
setRecaptchaComponent
	| recaptchaClass |
	captchaComponent := 
		((recaptchaClass := (Smalltalk at: #BWRecaptchaComponent ifAbsent: [ nil ])) isNil
		ifFalse: [ captchaComponent ifNil: [ recaptchaClass new ]]
		ifTrue: [ nil ])
