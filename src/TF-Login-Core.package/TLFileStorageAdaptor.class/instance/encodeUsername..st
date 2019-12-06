private
encodeUsername: aUsername
	^ aUsername asLowercase base36Encoded 
