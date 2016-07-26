collection ops
addInvoice: anInvoice
	"add invoice to collection"

	self at: anInvoice number put: anInvoice.
	^ anInvoice