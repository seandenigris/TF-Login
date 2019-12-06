registration
onRegistration: aOneArgBlock
	"Evaluate this block with the newly-constructed pending user object before registration is complete.
	The block may add applicationProperties. The block answers true to allow the registration to proceed."
	userRegistrationHandler := aOneArgBlock 