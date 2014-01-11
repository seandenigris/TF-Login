as yet unclassified
dateTimeFormatted
	| string |
	
	string := dateTime asString at: 11 put: $ ; yourself.
	^ string allButLast: 6