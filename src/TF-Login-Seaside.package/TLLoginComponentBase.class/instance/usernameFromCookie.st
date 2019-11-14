login-logout
usernameFromCookie
	"Answer the username from the cookie or an empty string if no username cookie is present.."

	| ucookie |
	^ (ucookie := self usernameCookie) isNil
		ifTrue: ['']
		ifFalse: [self decodeUsernameCookie: self usernameCookie]
