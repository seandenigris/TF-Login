registration
onLogin: aOneArgBlock
	"Evaluate this block with the logging-in user object before login is approved.
	The block answers nil to allow the login to proceed or a string containing a message
	to be displayed to the user if the login is disallowed. Example use: this can be used,
	along with an application property, to temporarily disable accounts without deleting them."
	onLoginBlock := aOneArgBlock 