as yet unclassified
queueDeleteDbRequest
	"Must be invoked from within lock critical:."
	self queue add: (Association key: #DeleteDb).
	self processing ifFalse: [
		processing := true.
		self processQueue ]