as yet unclassified
validatePassword
	^ (passwordValidationError := loginComponent validateNewPassword: newPassword)