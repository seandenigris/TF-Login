private
usernamePart: aFilename
	| start end |
	start := aFilename indexOf: $-.
	end := aFilename lastIndexOf: $-.
	^ aFilename copyFrom: start + 1 to: end - 1.
