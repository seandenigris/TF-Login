private
emailPart: aFilename
	| start end |
	start := aFilename lastIndexOf: $-.
	end := aFilename lastIndexOf: $..
	^ aFilename copyFrom: start + 1 to: end - 1.
