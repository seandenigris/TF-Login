as yet unclassified
sendEmailChangeConfirmationTo: email confirmUrl: url timeout: timo newUser: newUser
	"Compose and send email. Answer true on success, false on failure."
 
	| textBody htmlBody emailOk appName |
	
	appName := 'Login Test App'.
	
	textBody := (WriteStream on: String new)
		<< 'This email is in response to your request change your '; << appName; << ' email address.'; crlf;crlf;
		<< 'Direct your browser to the following URL within ';<< timo asString; << ' minutes to confirm this change'; crlf;crlf;
		<< '         '; << url; crlf;crlf;
		<< 'If you did not request an address change then this message may indicate a beak-in attempt at ';<< appName; <<'.'.		
	
	htmlBody := WAHtmlCanvas builder fullDocument: true; render: [ :html |
		html div
			style: 'font-size: 11pt';
			with: [
			html div
				style: 'margin-bottom: 10px;';
				with: 'This email is in response to your request change your ', appName, ' email address'.
			html text: 'Click on the link below within ', timo asString, ' minutes to confirm this change.'.
			html div
				style: 'margin-left:20pt;margin-top:10px;margin-bottom:10px;';
				with: [
					html anchor
						url: url;
						with: 'Confirm address change'].
			html text: 'If the link above is unresponsive, copy and paste the URL below into your browser''s address field to confirm the change.'.
			html div	
				style: 'margin-left:20pt;margin-top:10px;margin-bottom:10px;';
				with: url.
			html text: 'If you did not request a change then this message may indicate a beak-in attempt at ', appName, '.']].

	(emailOk := self sendEmailTo: email subject:  appName, ' email address change - action required' text: textBody html: htmlBody)
		ifFalse: [ Transcript cr; show: url ].
	
	^ emailOk
