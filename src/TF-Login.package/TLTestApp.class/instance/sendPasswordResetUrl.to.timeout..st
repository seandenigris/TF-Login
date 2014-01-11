as yet unclassified
sendPasswordResetUrl: url to: email  timeout: timo
	"Compose and send email. Answer true on success, false on failure."

	| textBody htmlBody emailOk appName |
	
	appName := 'Login Test App'.
	
	textBody := (WriteStream on: String new)
		<< 'This email is in response to your request reset your '; << appName; << ' password.'; crlf;crlf;
		<< 'Direct your browser to the following URL within ';<< timo asString; << ' minutes to reset your password.'; crlf;crlf;
		<< '         '; << url; crlf;crlf;
		<< 'If you did not request a password reset then this message may indicate a beak-in attempt at ';<< appName; <<'.'.		
	
	htmlBody := WAHtmlCanvas builder fullDocument: true; render: [ :html |
		html div
			style: 'font-size:11pt;';
			with: [		
				html span
					style: 'margin-bottom: 10px;';
					with: 'This email is in response to your request to reset your ', appName, ' password.'.
			html text: 'Click on the link below within ', timo asString, ' minutes to reset your password.'.
			html div
				style: 'margin-left:20pt;margin-top:10px;margin-bottom:10px;';
				with: [
					html anchor
						url: url;
						with: 'Password Reset'].
			html text: 'If the link above is unresponsive, copy and paste the URL below into your browser''s address field to reset your password.'.
			html div
				style: 'margin-left:20pt;margin-top:10px;margin-bottom:10px;';
				with: url.
			html text: 'If you did not request a password reset then this message may indicate a beak-in attempt at ', appName, '.']].

	(emailOk := self sendEmailTo: email subject:  appName, ' password reset' text: textBody html: htmlBody)
		ifFalse: [ Transcript cr; show: url ].

	^ emailOk
 