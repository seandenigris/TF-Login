as yet unclassified
confirmationURL: regId
	^ 'http://' , self session requestContext request host, self session basicUrl asString , '&acctchg=' , regId.