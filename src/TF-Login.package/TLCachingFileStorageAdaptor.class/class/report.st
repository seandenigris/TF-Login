as yet unclassified
report
	^ (WriteStream on: String new)
		crlf;
		nextPutAll: 'Cache hits: ';
		nextPutAll: (Requests - Misses) asString;
		crlf;
		nextPutAll: 'Cache misses: ';
		nextPutAll: Misses asString;
		crlf;
		nextPutAll: 'Cache evictions: ';
		nextPutAll: Evictions asString;
		crlf;
		nextPutAll: 'File writes: ';
		nextPutAll: Writes asString;
		crlf;
		nextPutAll: 'All userIds requests: ', AllUserIdsRequests ;
		crlf;
		nextPutAll: 'All usernames requests: ', AllUsernamesRequests;
		contents
		