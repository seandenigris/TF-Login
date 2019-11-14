registration
validateNewPassword: password
	^ (passwordValidator ifNil: [ [ :p |  nil ]]) value: password