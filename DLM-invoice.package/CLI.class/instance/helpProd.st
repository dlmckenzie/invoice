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
	ViewProd showHelpShort.
	ViewAllProducts showHelpShort.
	SearchProdByDesc showHelpShort.
	UpdateProdWithDesc showHelpShort.
	UpdateProdWithPrice showHelpShort.
	DeleteProd showHelpShort