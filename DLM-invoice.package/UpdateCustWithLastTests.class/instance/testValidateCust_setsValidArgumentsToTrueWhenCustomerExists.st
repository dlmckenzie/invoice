testing - happy path
testValidateCust_setsValidArgumentsToTrueWhenCustomerExists
	"ValidArguments should be set to true when all validations pass"

	| app cmd cust |
	app := App new.
	app start.
	Command initializeWithApp: app.
	cust := Customer newWithName: (CustomerName newWithFirst: 'Joey' Last: 'Smith').
	app customers addCust: cust.
	cmd := UpdateCustWithLast newWithCust: cust id Last: 'Smithe'.

	"cmd validateCust."
	self
		assert: [ cmd validArguments ]
		description: 'validArguments should be set to true when customer exists'