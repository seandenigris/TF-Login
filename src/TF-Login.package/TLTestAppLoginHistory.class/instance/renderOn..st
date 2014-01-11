as yet unclassified
renderOn: html
	html div
		style: 'width: 400px; height: 100px; overflow: auto; border: 1px solid black';
		with: [
			self list do: [ :each |
				html text: each; break ]].