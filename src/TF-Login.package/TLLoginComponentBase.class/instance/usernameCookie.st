login-logout
usernameCookie
	"Answer the content of the username cookie or nil."
	
	^ self session requestContext request cookieAt: (self appName, '-001')
	