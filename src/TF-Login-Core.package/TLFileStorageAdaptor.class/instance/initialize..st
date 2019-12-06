private
initialize: anAppName
	"Set appName before invoking this."
	super initialize.
	self appName: anAppName.
	rw := TLReadWrite preferWriters: true.
	db := TLMultiFileDatabase on: (self appName, 'UserDb') rwLocking: false.
	db matchBlock: [ :aString |
		(self userIdPart: aString),'-*'].
	self convert.