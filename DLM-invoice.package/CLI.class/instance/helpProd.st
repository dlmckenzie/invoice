interface - help
helpProd
	"prints help intro to Transcript"

	stream := String new writeStream.
	stream
		nextPutAll: '  Products:';
		cr.
	self displayHelp: stream.
	AddProdWithKey showHelpShort.
	Transcript
		show: '     Add  -  addProdWithKey:Desc:Price:';
		cr.
	Transcript
		show: '     View  -  viewProd:';
		cr.
	Transcript
		show: '     View all  -  viewAllProducts';
		cr.
	Transcript
		show: '     Search by description  -  searchProdByDesc:';
		cr.
	Transcript
		show: '     Update description  -  updateProd:WithDesc:';
		cr.
	Transcript
		show: '     Update price  -  updateProd:WithPrice:';
		cr.
	Transcript
		show: '     Delete  -  deleteProd:';
		cr