as yet unclassified
hasError

	^ self usernameMatchError | self passwordMatchError | self passwordEmptyError | self passwordValidationError
