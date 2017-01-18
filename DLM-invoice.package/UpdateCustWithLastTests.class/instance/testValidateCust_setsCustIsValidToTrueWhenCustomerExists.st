testing - happy path
testValidateCust_setsCustIsValidToTrueWhenCustomerExists
	"custIsValid should be set to true when when cust is found"

	| app cmd cust |
	app := App new.
	app start.
	Command initializeWithApp: app.
	cust := Customer newWithName: (CustomerName newWithFirst: 'Joey' Last: 'Smith').
	app customers addCust: cust.
	cmd := UpdateCustWithLast newWithCust: cust id Last: 'Smithe'.
	self assert: [ cmd custIsValid  ] description: 'validArguments should be set to true when customer exists'