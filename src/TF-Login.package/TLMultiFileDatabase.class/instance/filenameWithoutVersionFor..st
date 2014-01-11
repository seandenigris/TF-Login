private
filenameWithoutVersionFor: aFileName
	^ ((aFileName trimBoth: [ :c | c = $' ])  first: (aFileName lastIndexOf: $.) - 1) 