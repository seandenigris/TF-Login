as yet unclassified
testChangeUsername
	"Make sure old files with the previous username are versioned appropriately."
	
	| u1 |

	db maxVersions: 4.

	db createUser: (TLRegisteredUser username: 'User1' password:  'pswd1' email: 'user1@emailaddress').
	db createUser: (TLRegisteredUser username: 'User2' password:  'pswd2' email: 'user2@emailaddress').
	[db processing] whileTrue: [ 100 milliSeconds asDelay wait].

	u1 := db userForUsername: 'User1'.

	self assert: db fileCount = 2. "1 User1, 1 user2"
	
	db updateUser: u1.
	db updateUser: u1.
	[db processing] whileTrue: [ 100 milliSeconds asDelay wait].

	self assert: db fileCount = 4. "Add 2 User1"
	
	db updateUser: u1.
	db updateUser: u1.
	[db processing] whileTrue: [ 100 milliSeconds asDelay wait].

	self assert: db fileCount = 5. "Add 2 User1 and trim one."
	
	u1 username: 'User3'.
	db updateUser: u1.
	[db processing] whileTrue: [ 100 milliSeconds asDelay wait].
	
	self assert: db fileCount = 5. "Add 1 User1 and trim one."

	db updateUser: u1.
	db updateUser: u1.
	db updateUser: u1.
	db updateUser: u1.
	[db processing] whileTrue: [ 100 milliSeconds asDelay wait].

	self assert: db fileCount = 5. "Add 1 User1 and trim one."
