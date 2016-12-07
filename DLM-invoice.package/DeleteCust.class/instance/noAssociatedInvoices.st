private - validation
noAssociatedInvoices
	"answer whether cust has no associated invoices.
	A customer cannot be deleted if it has associated invoices"

	^ cust associatedWithInvoices not