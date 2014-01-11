as yet unclassified
sendTestConfirmationUrl: url to: email  timeout: timo
	"Compose and send email. Answer true on success, false on failure."

	| textBody htmlBody emailOk appName |
	
	appName := 'Login Test App'.
	
	textBody := (WriteStream on: String new)
		<< 'This email is in response to your request to receive a test confirmation email from ';<< appName;<< '.'; crlf;crlf;
		<< 'Direct your browser to the following URL within ';<< timo asString; << ' minutes to confirm your receipt of this message.'; crlf;crlf;
		<< '         '; << url; crlf;crlf;
		<< 'If you did not request a test confirmation email then this message may indicate someone else has access to your account at ';<< appName; <<'.'.		
	
	htmlBody := WAHtmlCanvas builder fullDocument: true; render: [ :html |
		html div
			style: 'font-size:11pt;';
			with: [		
				html span
					style: 'margin-bottom: 10px;';
					with: 'This email is in response to your request to receive a test confirmation email from ', appName, '.'.
			html text: ' Click on the link below within ', timo asString, ' minutes to confirm your receipt of this message.'.
			html div
				style: 'margin-left:20pt;margin-top:10px;margin-bottom:10px;';
				with: [
					html anchor
						url: url;
						with: 'Confirm'].
			html text: 'If the link above is unresponsive, copy and paste the URL below into your browser''s address field to reset your password.'.
			html div
				style: 'margin-left:20pt;margin-top:10px;margin-bottom:10px;';
				with: url.
			html text: 'If you did not request a test confirmation email then this message may indicate someone else has access to your account at ', appName, '.']].

	(emailOk := self sendEmailTo: email subject:  appName, ' test confirmation email' text: textBody html: htmlBody)
		ifFalse: [ Transcript cr; show: url ].

	^ emailOk
 