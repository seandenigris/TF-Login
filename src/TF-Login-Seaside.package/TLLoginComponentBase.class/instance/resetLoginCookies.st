cookies
resetLoginCookies
	| ucookie pcookie |
	ucookie := self session requestContext request cookieAt: (self appName, '-001').
	pcookie := self session requestContext request cookieAt: (self appName, '-002').
	ucookie ifNotNil: [ :cookie | self rememberUsernameInCookie: user username ].
	pcookie ifNotNil: [ :cookie | self rememberPasswordInCookie: (self authenticationManager userForId: user userId) encryptedPassword ].
