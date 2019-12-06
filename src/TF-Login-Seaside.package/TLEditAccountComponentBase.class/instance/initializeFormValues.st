as yet unclassified
initializeFormValues
	| user |
	(user := self session user) notNil ifTrue: [
		newUsername := user username.
		newEmail := user email.
		newPassword := self dummyPassword.
		newPasswordConfirm := newPassword ].
	^ user