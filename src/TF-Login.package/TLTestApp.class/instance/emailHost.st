as yet unclassified
emailHost
	"Answer the server hostname."
	^ self session requestContext request host copyUpTo: $:.
