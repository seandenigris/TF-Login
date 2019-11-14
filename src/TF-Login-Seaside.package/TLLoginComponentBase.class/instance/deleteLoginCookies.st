cookies
deleteLoginCookies
	| ucookie pcookie |
	ucookie := self session requestContext request cookieAt: (self appName, '-001').
	pcookie := self session requestContext request cookieAt: (self appName, '-002').
	ucookie ifNotNil: [ :cookie | self session requestContext response deleteCookie: cookie].
	pcookie ifNotNil: [ :cookie | self session requestContext response deleteCookie: cookie].
