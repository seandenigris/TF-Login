as yet unclassified
plainMessage
	^ String streamContents: 
		[ :stream | 
		self 
			renderAddress: self from
			withHeader: 'From: '
			on: stream.
		self to do: 
			[ :each | 
			self 
				renderAddress: each
				withHeader: 'To: '
				on: stream ].
		self cc do: 
			[ :each | 
			self 
				renderAddress: each
				withHeader: 'Cc: '
				on: stream ].
		self bcc do: 
			[ :each | 
			self 
				renderAddress: each
				withHeader: 'Bcc: '
				on: stream ].
		stream
			nextPutAll: 'Subject: ';
			nextPutAll: self subject;
			nextPut: Character cr.

		self headers keysAndValuesDo:
			[:k : v |
				stream
					nextPutAll: k;
					nextPutAll: ': ';
					nextPutAll: v;
					nextPut: Character cr ].

		stream	
			nextPut: Character cr.
		self body isNil ifFalse: [ stream nextPutAll: self body greaseString ] ]