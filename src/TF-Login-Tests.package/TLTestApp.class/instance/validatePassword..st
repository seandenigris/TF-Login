as yet unclassified
validatePassword: password
	^ password size < self minimumPasswordLength 
		ifTrue: [ 'Password must be at least ', self minimumPasswordLength asString, ' characters long.']
		ifFalse: [ nil ]