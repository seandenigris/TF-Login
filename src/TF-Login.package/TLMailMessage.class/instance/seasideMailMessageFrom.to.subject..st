as yet unclassified
seasideMailMessageFrom: fromAddress to: toAddress subject: mailSubject
	| msg waFields |
	
	waFields := #( 'from' 'to' 'date' 'subject').
	
	msg := TLWAEmailMessage from: (WAEmailAddress address: fromAddress)  to: (WAEmailAddress address: toAddress)  subject: mailSubject. 
	self fields keysAndValuesDo: [ :k :v |
		(waFields includes: k asLowercase) ifFalse: [
			msg headerAt: k put: v first asHeaderValue  ] ].
	msg body: self bodyText.
	^ msg