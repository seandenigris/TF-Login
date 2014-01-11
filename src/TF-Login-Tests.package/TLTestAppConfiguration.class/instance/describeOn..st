as yet unclassified
describeOn: config
	<lint: 'Overrides super method without calling it' rationale: 'This is a should override' author: 'TF'>

	(config integer: #minimumPasswordLength)
		group: #tltestapp;
		default: 6;
		comment: 'Required minimum password length'.
	(config integer: #maximumFailedLoginAttempts)
		group: #tltestapp;
		default: 3;
		comment: 'Maximum failed login attempts allowed before account is disabled.'.

