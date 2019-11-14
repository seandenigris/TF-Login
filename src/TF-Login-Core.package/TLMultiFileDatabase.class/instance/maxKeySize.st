private
maxKeySize
	| ks |
	ks := maxKeySize ifNil: [
		maxKeySize := 0.
		((self dirlist keys detectMax: [: each | each size ]) ifNil: [ '' ]) size].
	^ ks