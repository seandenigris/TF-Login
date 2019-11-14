login-logout
decodeUsernameCookie: theCookie
	"Answer the decoded username from the username cookie."
	
	^ (Base64MimeConverter mimeDecodeToChars: (ReadStream on: theCookie value)) contents