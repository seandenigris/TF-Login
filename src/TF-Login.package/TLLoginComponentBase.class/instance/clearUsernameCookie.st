cookies
clearUsernameCookie
	| ucookie |
	ucookie := self session requestContext request cookieAt: (self appName, '-001').
	ucookie ifNotNilDo: [ :cookie |
		self session requestContext response deleteCookie: cookie].
	
