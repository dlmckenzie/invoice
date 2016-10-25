testing - happy path
testValidate_setsValidArgumentsToTrueWhenAllValidationsPass
	"ValidArguments should be set to true when all validations pass"

	| app cmd cust |
	app := App new.
	app start.
	cust := Customer
		newWithName: (CustomerName newWithFirst: 'Joey' Last: 'Smith').
	app customers addCust: cust.
	cmd := UpdateCustWithFirst newWithCust: cust id First: 'Joe'.
	Command initializeWithApp: app.
	cmd validate.
	self
		assert: [ cmd validArguments ]
		description: 'validArguments should be set to true when all validations pass'