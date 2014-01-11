as yet unclassified
smalltalkImageHasDisplay
	| arg i |
	i := -1.
	[(arg := SmalltalkImage current getSystemAttribute: i) isNil]
		whileFalse: [
			Transcript cr; show: i asString, arg asString.
			(#('-nodisplay' '-headless' 'display=none' '-vm-display-null') includes: arg) ifTrue: [^ false].
			i := i - 1].
	^ true