as yet unclassified
renderEmailInput: html

	html span: 'Email '.
	(html textInput)
		id: 'forgotusernameemail';
		callback: [ :v | username := v ]