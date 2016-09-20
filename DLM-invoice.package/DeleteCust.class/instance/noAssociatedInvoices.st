validation
noAssociatedInvoices
	"answer whether cust has no associated invoices"

	^ (Application customers retrieveByID: id) associatedWithInvoices not