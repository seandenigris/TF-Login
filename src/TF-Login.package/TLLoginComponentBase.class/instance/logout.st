login-logout
logout
	self clearPasswordCookie.
	self saveUser.
	self session user: nil
	