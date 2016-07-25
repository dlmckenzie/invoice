collection ops
retrieveByNumber: anInvoiceNumber
	"answer invoice correspoinding to invoice number or nil"

	^ (self at: anInvoiceNumber ifAbsent: [ nil ] ).