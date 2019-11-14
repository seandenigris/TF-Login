cookies
clearPasswordCookie
	| pcookie |
	pcookie := self session requestContext request cookieAt: (self appName, '-002').
	pcookie ifNotNil: [ :cookie |
		self session requestContext response deleteCookie: cookie].
