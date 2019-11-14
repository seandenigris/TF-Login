as yet unclassified
sendUsernames: users to: email
	emailSender
		value: (users collect: [ :each | each username ])
		value: email
		