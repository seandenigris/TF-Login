email-confirmation
registrationConfirmationURL: regId

	^ 'http://' , self session requestContext request host, '/',self session url path first asString , '?regconfirm=' , regId.
