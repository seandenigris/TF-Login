as yet unclassified
testLoginLogout

	| content  |

	Transcript cr; show: 'testLoginLogout'.

	self registerTestUser1.
	content := self getStartPage.
	content := self
		clickOn: 'loginbtn'
		in: content
		with: ((Dictionary new)
			at: 'loginuser' put: 'TestUser1';
			at: 'loginpswd' put: 'testpass';
			yourself).
	self assert: (self findFormIn: content withClass: 'loggedinform') notNil.
	content := self
		clickOn: 'logoutbtn'
		in: content.
	self deny: ((Soup fromString: content) findTagByClass: 'loginform') isNil.	
