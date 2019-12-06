registration
passwordValidator: aOneArgBlock
	"passwordValidator is passed the candidate password. If it is acceptable, the block should evaluate to nil.
	Otherwise it should evaluate to the error text to be displayed to the user."
	passwordValidator := aOneArgBlock 