cookies
clearPasswordCookie: session
	| pcookie |
	pcookie := session requestContext request cookieAt: (self appName, '-002').
	pcookie ifNotNil: [ :cookie |
		session requestContext response deleteCookie: cookie].
