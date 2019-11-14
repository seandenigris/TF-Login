private
initializeDirectoryList
	| descender |
	dirlist := nil.
	
	descender := [ :dir :key |
		| names |
		names := dir directoryNames sorted.
		names size > 0
			ifTrue: [
				dir fileNames size > 0 ifTrue: [ self dirlist at: key put: dir ].
				names do: [ :each |
					| sdir |
					sdir := dir / each.
					descender value: sdir value: key, each ]]
			ifFalse: [ 
				self dirlist at: key put: dir ]].

	descender value: (self storageDirectory) value: ''.
	
	self maxKeySize: ((self dirlist keys detectMax: [:k | k size ]) ifNil: ['']) size