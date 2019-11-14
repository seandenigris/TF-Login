*TF-Login-Core
base36Encoded
	| num candidate |
	num := 0.
	1 to: self size do: [:i | num := num + ((256 raisedTo: i - 1) * (self at: i) asInteger )].
	candidate := num printStringBase: 36.
	^ ((candidate beginsWith: '36r')
			ifTrue: [candidate copyFrom: 4 to: candidate size]
			ifFalse: [candidate]) asLowercase.