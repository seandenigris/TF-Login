as yet unclassified
createManyUsers
	| innerLoop outerLoop |
	innerLoop := 1000.
	outerLoop := 100.

	[| db |
	TLCachingFileStorageAdaptor initialize.
	Transcript cr; show: 'initializing... '.
	db := TLCachingFileStorageAdaptor name: 'LoginTestApp'.
	Transcript show: 'completed'.
	Transcript cr; show: 'deleting... '.
	db deleteDatabase.
	Transcript show: 'completed'.
	1 to: outerLoop  do: [ : m |
		Transcript cr; show: DateAndTime current asString, ' - ', (m * innerLoop) asString.
		1 to: innerLoop  do: [ :n |
		db createUser: (TLPendingUser
			username: 'Test', (m printStringLength: 3 padded: true), '-', (n printStringLength: 4 padded: true)
			password: (m printStringLength: 3 padded: true)
			email: (m printStringLength: 3 padded: true), '-', (n printStringLength: 4 padded: true), '@gmail.com'
			regId: TLAuthenticationManager generateRegId
			confirmationDeadline: nil) asRegisteredUser.
		].
		[ db processing ] whileTrue: [ 1 second asDelay wait ]].
	Transcript cr; show: 'completed'] forkAt: Processor userBackgroundPriority named: 'CreateManyUsers'.
