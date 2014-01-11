private
saveUser: aUser
	db saveObject: aUser withName: (self key: aUser) 