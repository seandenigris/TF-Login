as yet unclassified
sendEmailTo: toAddress subject: subj text: textBody html: htmlBody
	"Send multi-part MIME email message."
	
	| sem em|
	em := TLMailMessage empty.
	em addAlternativePart: textBody contents contentType: 'text/plain'.
	em addAlternativePart: htmlBody contents contentType: 'text/html'.
	sem := em
		seasideMailMessageFrom: 'Registrar@' , self emailHost
		to: toAddress
		subject: subj.
	[sem send] on: Exception do: [ :ex | ^ false ].
	^ true