as yet unclassified
sendRegistrationConfirmationEmailTo: email confirmUrl: url timeoutMinutes: timo
	"Compose and send email. Answer true on success, false on failure."

	| textBody htmlBody emailOk appName |

	appName := 'Login Test App'.
	
	textBody := (WriteStream on: String new)
		<< 'This email is in response to your request to register at '; << appName; << '.'; crlf;crlf;
		<< 'Direct your browser to the following URL within ';<< timo asString; << ' minutes to confirm your registration.'; crlf;crlf;
		<< '         '; << url; crlf;crlf;
		<< 'If you did not attempt to register for a'; << appName; << ' account then this message was sent in error and should be ignored.'.	

	htmlBody := WAHtmlCanvas builder fullDocument: true; render: [ :html |
		html div
			style: 'font-size:11pt;';
			with: [
				html div
					style: 'margin-bottom: 10px;';
					with: 'This email is in response to your request to register at ', appName, '.'.
				html text: 'Click on the link below within ', timo asString, ' minutes to confirm your registration.'.
				html div
					style: 'margin-left:20pt;margin-top:10px;margin-bottom:10px;';
					with: [
						html anchor
							url: url;
							with: 'Confirm registration'].
		 		html text: 'If the link above is unresponsive, copy and paste the URL below into your browser''s address field to confirm your registration.'.
				html div
					style: 'margin-left:20pt;margin-top:10px;margin-bottom:10px;';
					with: url.
				html text: 'If you did not attempt to register for a', appName, ' account then this message was sent in error and should be ignored.']].

	(emailOk := self sendEmailTo: email subject:  appName, ' Registration - action required' text: textBody html: htmlBody)
		ifFalse: [ Transcript cr; show: url ].

	^ emailOk

	