cookies
cookieLogin
	| uname encpswd ucookie pcookie |
	
	accountChangeConfirmed ifNotNilDo: [ :bool | ^ false ].
	
	ucookie := self session requestContext request cookieAt: (self appName, '-001').
	pcookie := self session requestContext request cookieAt: (self appName, '-002').
	(ucookie isNil or: [ pcookie isNil]) ifTrue: [ ^ false ].
	
	uname := (Base64MimeConverter mimeDecodeToChars: (ReadStream on: ucookie value)) contents.
	encpswd := (Base64MimeConverter mimeDecodeToChars: (ReadStream on: pcookie value)) contents.
	user := self authenticationManager loginUser: uname encryptedPassword: encpswd from: self session requestContext request remoteAddress.	
	user isNil
		ifTrue: [ ^ false ]
		ifFalse: [
			authenticationError := nil.
			self rememberUsernameInCookie: user username.
			self rememberPasswordInCookie: (self authenticationManager registeredUserFor: user) encryptedPassword.
			self session user: user.
			self answer: user ]