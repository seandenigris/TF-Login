configuration
usernamePasswordRememberDays 
	^ (self application preferenceAt: #UsernamePasswordRememberDays) asInteger