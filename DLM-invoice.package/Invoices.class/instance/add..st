collection ops
add: anInvoice
	"add invoice to collection"

	self at: anInvoice number put: anInvoice.
	^ anInvoice