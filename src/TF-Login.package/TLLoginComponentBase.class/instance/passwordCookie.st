login-logout
passwordCookie
	"Answer the content of the password cookie or nil."
	
	^ self session requestContext request cookieAt: (self appName, '-002').
