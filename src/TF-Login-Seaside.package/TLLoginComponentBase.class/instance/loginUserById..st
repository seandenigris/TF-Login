login-logout
loginUserById: aUserId

	user := self authenticationManager
		loginUserById: aUserId
		from: self session requestContext request remoteAddress.
	user isNil
		ifTrue: [ authenticationError := true ]
		ifFalse: [
			(self loginDisallowed: (self onLoginBlock value: user)) isNil
				ifTrue: [
					authenticationError := nil.
					self resetLoginCookies.
					self session user: user.
					self answer: user ]]