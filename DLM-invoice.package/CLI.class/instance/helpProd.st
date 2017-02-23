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
	ViewAllProducts showHelpShort.
	SearchProdByDesc showHelpShort.
	UpdateProdWithDesc showHelpShort.
	UpdateProdWithPrice showHelpShort.
	DeleteProd showHelpShort