as yet unclassified
saveUser: aUser
	"Must be called from within lock critical:."
	self incrementWrites.
	self queueSaveRequest: aUser.