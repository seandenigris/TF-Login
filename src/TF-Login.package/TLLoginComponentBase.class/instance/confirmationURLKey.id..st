email-confirmation
confirmationURLKey: aKey id: regId

	^ 'http://' , self session requestContext request host, '/',self session url path first asString , '?', aKey, '=' , regId.
