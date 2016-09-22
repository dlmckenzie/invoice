interface - app
start
	"initializes components for invoicing app."

	customers := Customers new.
	products := Products new.
	invoices := Invoices new.
	Customer knowsAbout: invoices