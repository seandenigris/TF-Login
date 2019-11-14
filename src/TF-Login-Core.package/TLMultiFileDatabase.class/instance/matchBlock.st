private
matchBlock
	^ matchBlock ifNil: [[ :fileName | fileName,'.*']]