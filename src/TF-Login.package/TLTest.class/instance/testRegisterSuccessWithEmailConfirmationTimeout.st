as yet unclassified
testRegisterSuccessWithEmailConfirmationTimeout

	| content  myemail confirmUrl |
	
	Transcript cr; show: 'testRegisterSuccessWithEmailConfirmationTimeout'.

	myemail := 'meatmyemailcom'.
	TLTester registrationConfirmationEmailSender: [ :confUrl :email :timeout |
		self assert: email = myemail.
		self assert: timeout = 0.
		confirmUrl := confUrl.
		true ].
	TLTester sendRegistrationConfirmationEmail: true.
	TLTester confirmationTimeoutMinutes: 0.
	content := self getStartPage.
	content := self clickOn: 'registerbtn' in: content.	
	content := self
		clickOn: 'registerbtn'
		in: content
		with: ((Dictionary new)
			at: 'registeruser' put: 'TestUser1';
			at: 'registerpswd' put: 'testpass';
			at: 'registerconfirmpswd' put: 'testpass';
			at: 'registeremail' put: myemail;
			yourself).
	self assert: ((Soup fromString: content) findTagByClass: 'regsubmitted') isNil not.
	content := (ZnClient new get: confirmUrl) contents.
	self assert: ((Soup fromString: content) findTagByClass: 'loginconffailed') isNil not.		
