private
allUserIdsUnsynchronized
	^ (db fileNames collect: [ :each |
			(self userIdPart: each)]) asSet