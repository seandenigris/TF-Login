cookies
deleteLoginCookies
	| ucookie pcookie |
	ucookie := self session requestContext request cookieAt: (self appName, '-001').
	pcookie := self session requestContext request cookieAt: (self appName, '-002').
	ucookie ifNotNilDo: [ :cookie | self session requestContext response deleteCookie: cookie].
	pcookie ifNotNilDo: [ :cookie | self session requestContext response deleteCookie: cookie].
