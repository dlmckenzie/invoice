testing
testValidateSetsValidArgumentsToTrueWhenAllValidationsPass
	"ValidArguments should be set to true when all validations pass"

	| app cmd cust |
	app := App new.
	app start.
	cust := Customer newWithFirst: 'Joey' Last: 'Smith'.
	app customers addCust: cust.
	cmd := UpdateCustWithFirst newWithCust: cust First: 'Joe'.
	cmd validate.
	self
		assert: [ cmd validArguments ]
		description: 'validArguments should be set to true when all validations pass'