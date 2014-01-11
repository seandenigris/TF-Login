cookies
setLoginCookies

	| pcookie |	
	pcookie := self session requestContext request cookieAt: (self appName, '-002').
	(self rememberUsername or: [ self automaticLogin])
				ifTrue: [
					self rememberUsernameInCookie: user username.
					self automaticLogin
						ifTrue: [
							self rememberPasswordInCookie: (self authenticationManager registeredUserFor: user) encryptedPassword  ]
						ifFalse: [
							pcookie ifNotNilDo: [ :cookie |
								self session requestContext response deleteCookie: cookie]]]
				ifFalse: [
					self deleteLoginCookies ]