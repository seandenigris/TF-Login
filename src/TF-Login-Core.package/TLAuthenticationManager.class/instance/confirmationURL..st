as yet unclassified
confirmationURL: regId
	^ 'http://' , self loginComponent session requestContext request host, self session baseUrl asString , '?confirm=' , regId.
