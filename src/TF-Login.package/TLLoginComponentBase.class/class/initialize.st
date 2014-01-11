as yet unclassified
initialize
	"Write the document TFLogin Guide to TFLoginGuide.txt and then display it in a workspace."
	"TFLoginComponent initialize"
	
	| ws |
	self smalltalkImageHasDisplay ifTrue: [
		(FileStream forceNewFileNamed: 'TFLoginGuide.txt')
			nextPutAll: self tfLoginGuide;
			close.
		ws := (Workspace openFile: 'TFLoginGuide.txt')
			label: 'TFLoginGuide.txt'.
		ws topView
			position: 100@100;
			extent: 800@400]