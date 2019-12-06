private
rebalance: dir
	
	| key newKeySize |

	dir fileNames size < self maxFiles ifTrue: [ ^ self ].
	"If maxEntries is set higher than maxFiles, we could get into a problem.
	We prevent this with the next line. We want to make sure there is more
	than one saved object in the directory."
	(self baseFileNamesContainedIn: dir fileNames) size < 2 ifTrue: [ ^ self ]. 
	key := self keyForDirectory: dir.
	newKeySize  := key size + 1.
	newKeySize > self maxDepth ifTrue: [ ^self ].
	self maxKeySize: (self maxKeySize max: newKeySize).
	
	dir files do: [ :fn |
		| newdirname d |
		newdirname := (fn basename at: newKeySize) asString. 
		fn moveTo: (d := dirlist
			at: key, newdirname
			ifAbsent: [
				dirlist
					at: key, newdirname
					put: (dir / newdirname) ensureCreateDirectory ]) ].
	dirlist removeKey: key ifAbsent: [ ].
