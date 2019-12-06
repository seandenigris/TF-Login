private
initializeWithRwLocking: aBoolean 
	super initialize.
	rw := (aBoolean ifTrue: [ TLReadWrite ] ifFalse: [ TLNullReadWrite ]) preferWriters: true.
	self initializeDirectoryList
