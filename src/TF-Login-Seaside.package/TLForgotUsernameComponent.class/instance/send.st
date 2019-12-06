as yet unclassified
send
	| users |
	username isNil ifFalse: [
		users := self loginComponent authenticationManager usersForEmail: username.
		users isEmpty
			ifFalse: [
				self sendUsernames: users to: username ].
		self call: self usernameEmailSentComponent new].
	self answer	