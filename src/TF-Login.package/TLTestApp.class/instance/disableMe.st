as yet unclassified
disableMe
	self session user applicationProperties at: 'disabled' put: (DateAndTime current) + 2 minutes.
	self loggedOut