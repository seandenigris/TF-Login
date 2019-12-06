as yet unclassified
userIdGenerator
	^ userIdGenerator ifNil: [ self defaultUserIdGenerator ]