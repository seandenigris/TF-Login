private
lastSavedFileNamed: aString
	| dir |
	dir := self directoryFor: aString.
   	^ (dir fileNamesMatching: (self matchBlock value: aString))
        		detectMax: [:each |  self versionFor: each ].
