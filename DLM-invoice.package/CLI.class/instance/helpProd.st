interface - help
helpProd
	"prints help intro to Transcript"

	stream := String new writeStream.
	stream
		nextPutAll: '  Products:';
		cr.
	self displayHelp: stream.
	AddProdWithKey showHelpShort.
	AddProdWithKeyDescPrice showHelpShort.
	Transcript
		show: '     View  -  viewProd:';
		cr.
	Transcript
		show: '     View all  -  viewAllProducts';
		cr.
	SearchProdByDesc showHelpShort.
	UpdateProdWithDesc showHelpShort.
	UpdateProdWithPrice showHelpShort.
	DeleteProd showHelpShort