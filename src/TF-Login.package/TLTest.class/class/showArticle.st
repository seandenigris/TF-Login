as yet unclassified
showArticle
	| ws |
	(FileStream forceNewFileNamed: 'AutomatedTestingBlogArticle.txt')
		nextPutAll: TLTest automatedTestingBlogArticle;
		close.
	ws := (Workspace openFile: 'AutomatedTestingBlogArticle.txt')
		label: 'AutomatedTestingBlogArticle.txt'.
	ws topView
		position: 100@100;
		extent: 800@400