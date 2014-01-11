as yet unclassified
sendUsernameReminderFor: usernames to: email
	"Compose and send email. Answer true on success, false on failure."

	|  textBody htmlBody emailOk appName |
	
	appName := 'Login Test App'.
	
	textBody := (WriteStream on: String new)
		<< 'This email is in response to your request to be reminded of the '; << appName; << 'usernames registered with the email address ';
		<< email; crlf; crlf;
		<< 'The following usernames are registered with the abovementioned email address'; crlf;crlf.
	usernames do: [ :each |
		textBody << '         ' << each; crlf ].
	textBody crlf;crlf;
		<< 'If you did not request a username reminder then this message may indicate a beak-in attempt at '; << appName; << '.'..	
	
	htmlBody := WAHtmlCanvas builder fullDocument: true; render: [ :html |
		html div
			style: 'font-size:11pt;';
			with: [
				html div
					style: 'margin-bottom: 10px;';
					with: 'This email is in response to your request to be reminded of the ', appName, ' usernames registered with the email address ', email,  '.'.
				html text: 'The following usernames are registered with the abovementioned email address.'.
				html div
					style: 'font-weight: 700; margin-left:20pt; margin-top:10px;margin-bottom:10px;';
					with: [
						usernames do: [ :each |
							html text: each; break ]].
				html text: 'If you did not request a username reminder then this message may indicate a beak-in attempt at ', appName, '.']].

	(emailOk := self sendEmailTo: email subject:  appName, ' username reminder' text: textBody html: htmlBody)
		ifFalse: [ Transcript cr; show: usernames ].
	^ emailOk
