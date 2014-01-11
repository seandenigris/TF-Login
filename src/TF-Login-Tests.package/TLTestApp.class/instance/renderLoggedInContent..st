as yet unclassified
renderLoggedInContent: view
	view
		form: [ 
			view div
				class: 'loggedin';
				with: [ 
							view
								text: 'You are logged in.';
								break;
								text: 'Your username is ' , self session user username , '.';
								break;
								text: 'Your user ID is ' , self session user userId , '.';
								break;
								text: 'Your IP address is ' , self session user lastLoginFrom , '.';
								break;
								text: 'Login count: ' , self session user loginCount asString , '.';
								break;
								text: 'Your email address is ' , self session user email , '.'.
							view
								paragraph
									style: 'font-family: Helvetica, sans-serif; font-size: 10pt;';
									with: [ 
										view anchor
											callback: [ self editingAccount: true ];
											with: 'Edit Account Settings'.
							 			view text: ' | '.
										view anchor
											callback: [ self confirmWithUser ];
											with: 'Send a test confirmation email to me' .
							 			view text: ' | '.
										view anchor
											callback: [ self disableMe ];
											with: 'Disable my account for two minutes' .
							 			view text: ' | '.
										view anchor
											callback: [ self deleteMe ];
											with: 'Delete my account.'].
							view
								paragraph: [ 
									(view button)
										callback: [ self loggedOut ];
										with: 'Logout' ] ]]