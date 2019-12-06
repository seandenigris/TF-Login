private
lastSavedFileNamed: aString
	| dir |
	dir := self directoryFor: aString.
   	^ (dir filesMatching: (self matchBlock value: aString))
        		detectMax: [:each |  self versionFor: each ].
