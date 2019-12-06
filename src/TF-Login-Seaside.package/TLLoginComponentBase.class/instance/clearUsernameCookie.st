cookies
clearUsernameCookie
	| ucookie |
	ucookie := self session requestContext request cookieAt: (self appName, '-001').
	ucookie ifNotNil: [ :cookie |
		self session requestContext response deleteCookie: cookie].
	
