as yet unclassified
usernameIsPending: uname

	| retval |
	Lock critical: [ retval := self pendingActions values anySatisfy: [ :u | u username = uname]].
	^retval