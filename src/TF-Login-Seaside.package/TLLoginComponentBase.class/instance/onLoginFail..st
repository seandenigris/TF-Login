registration
onLoginFail: aTwoArgBlock
	"Evaluate this block with the failed logging-in username and IP address.
	Example use: this can be used, along with an application property, to
	disable accounts after a number of unsuccessful login attempts."
	onLoginFailBlock := aTwoArgBlock 