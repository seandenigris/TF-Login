as yet unclassified
getStartPage
	^ (client get: self baseUrl, '/', TLTester appName) contents.
