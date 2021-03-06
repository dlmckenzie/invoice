testing - edge cases
testValidationFailureReasonAnswersCorrectlyForCustWithInvoices
	| app cli cust custID cmd invoice |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	cust := app domain customers addCust: (Customer newWithName: (CustomerName newWithFirst: 'Joe' Last: 'Smith')).
	custID := cust id.
	invoice := Invoice newWithCust: cust.
	app domain invoices addInvoice: invoice.
	cmd := DeleteCust newWithID: custID.
	cmd validate.
	self
		assert: [ cmd validationError = 'Cust has associated invoices.' ]
		description: 'incorrect error message'