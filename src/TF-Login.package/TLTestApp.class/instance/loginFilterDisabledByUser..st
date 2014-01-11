as yet unclassified
loginFilterDisabledByUser: user
	"If the user has disabled logins, return text to be displayed. Otherwise nil to
	allow login."

	| until |
	^ (user applicationProperties includesKey: 'disabled')
		ifTrue: [
			until := user applicationProperties at: 'disabled'.
			until < DateAndTime current
				ifTrue: [
					user applicationProperties removeKey: 'disabled'.
					nil ]
				ifFalse: [
					'Your account is disabled. Try again later.']]
		ifFalse: [ nil ]