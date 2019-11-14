as yet unclassified
renderContentOn: html

	html form
		class: self cssClass;
		with: [ 
			html span: self text.
			html button
				id: self buttonId;
				class: 'ackokbutton';
				callback: [ self answer ];
				with: self buttonLabel]