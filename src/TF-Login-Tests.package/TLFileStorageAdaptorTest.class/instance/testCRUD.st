as yet unclassified
testCRUD

	| u1 u1a |

	"Create"
	db createUser: (TLRegisteredUser username: 'User1' password:  'pswd1' email: 'user1@emailaddress').
	db createUser: (TLRegisteredUser username: 'User2' password:  'pswd2' email: 'user2@emailaddress').
	db createUser: (TLRegisteredUser username: 'User3' password:  'pswd3' email: 'user3@emailaddress').
	[db processing] whileTrue: [ 100 milliSeconds asDelay wait].

	self assert: ((db userForUsername:  'User1' ) email = 'user1@emailaddress' ).
	self assert: ((db userForUsername:  'User2' ) email = 'user2@emailaddress' ).
	self assert: ((db userForUsername:  'User3' ) email = 'user3@emailaddress' ).
	self assert: ((db userForUsername:  'User4' ) isNil ).

	"Fetches"
	self assert: (db userForUsername: 'User1') email = 'user1@emailaddress'.
	self assert: (db usersForEmail: 'user1@emailaddress') size = 1.
	self assert: ((db usersForEmail: 'user1@emailaddress') anySatisfy: [ :each | each username = 'User1' ]).

	"Verify multiple users with same email address."	
	u1 := (db usersForEmail: 'user1@emailaddress') anyOne.
	u1 email: 'user2@emailaddress'.
	db updateUser: u1.
	[db processing] whileTrue: [ 100 milliSeconds asDelay wait].
	
	self assert: db allUserIds size = 3.
	self assert: db allUsernames size = 3. 
	self assert: (db usersForEmail: 'user2@emailaddress') size = 2.
	self assert: ((db usersForEmail: 'user2@emailaddress') anySatisfy: [ :each | each username = 'User1' ]).
	self assert: ((db usersForEmail: 'user2@emailaddress') anySatisfy: [ :each | each username = 'User2' ]).
	u1 email: 'user1@emailaddress'.
	db updateUser: u1.
	[db processing] whileTrue: [ 100 milliSeconds asDelay wait].

	"Update"
	u1 := (db userForUsername: 'User1') copy.
	u1a := u1 copy.
	u1a email: 'user1@newemailaddress'.
	u1a password: 'newpswd1'.
	u1a username: 'User1a'.

	self assert: ((db userForUsername:  'User1') email = 'user1@emailaddress' ).

	db updateUser:  u1a.
	[db processing] whileTrue: [ 100 milliSeconds asDelay wait ].
	
	self assert: ((db userForUsername: 'User1a') email = 'user1@newemailaddress' ).

	"Delete"
	db deleteUser: u1a.
	[db processing] whileTrue: [ 100 milliSeconds asDelay wait].
	self assert: ((db userForUsername:  'User1a' ) isNil ).
	self assert: ((db userForUsername:  'User2' ) email = 'user2@emailaddress' ).
	self assert: ((db userForUsername:  'User3' ) email = 'user3@emailaddress' ).

	"Verify that database files are being created."
	self assert: (db fileCount > 0).