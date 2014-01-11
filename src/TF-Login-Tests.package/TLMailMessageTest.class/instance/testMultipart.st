as yet unclassified
testMultipart
	
	| m sm m2 part1 part2 txt html fromAddr toAddr subj |

	txt := 'This is plain text.'.
	html :=  '<html><head></head><body>This is html.</body></html>'.
	fromAddr := 'user1@address'.
	toAddr := 'user2@address'.
	subj := 'Test subject'.
	
	"Construct a multipart/alternative email message."
	m := TLMailMessage empty.
	m addAlternativePart: txt contentType: 'text/plain'. 
	m addAlternativePart: html contentType: 'text/html'.

	"Make it into a Seaside email message."
	sm := m seasideMailMessageFrom: fromAddr to: toAddr subject: subj.
	
	"Parse the Seaside message text into a MailMessage for testing."
	m2 := TLMailMessage from: sm plainMessage.

	self assert: (m2 from = fromAddr).
	self assert: (m2 to = toAddr).
	self assert: (m2 subject = subj).
	
	self assert: (((m2 fields at: 'content-type') at: 1) mainValue asLowercase = 'multipart/alternative'). 
	self assert: (m2 parts size = 2).

	part1 := m2 parts at: 1.
	part2 := m2 parts at: 2.

	self assert: ((part1 fields at: 'content-type') first mainValue asLowercase = 'text/plain').
	self assert: (part1 body content trimBoth = txt).
	
	self assert: ((part2 fields at: 'content-type') first mainValue asLowercase = 'text/html').
	self assert: (part2 body content trimBoth  = html).
	
