private
directoryFor: aString
	"Answer the existing directory into which the object named with aString can be found."
	| dir |
	(1 to: self maxKeySize) reverse
		detect: [ :n |
			dir := self dirlist at: (aString first: n) ifAbsent: [ nil ].
			dir notNil ]
		ifNone: [ 
			| d i |
			i := 1.
			d := self storageDirectory.
			[ d exists ] whileTrue: [
				dir := d.
				d := d directoryNamed: (aString at:i) asString.
				i := i + 1]].
	^dir
	