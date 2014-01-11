as yet unclassified
deleteMe
	(self
		call: (WAYesOrNoDialog new
			addDecoration: (WAMessageDecoration new message: 'Really delete your Login Test App account and all its data?');
			yourself))
		ifTrue: [ loginComponent deleteLoggedInUser  ]
