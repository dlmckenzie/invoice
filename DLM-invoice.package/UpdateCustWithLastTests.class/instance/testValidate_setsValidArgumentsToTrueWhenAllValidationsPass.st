testing - happy path
testValidate_setsValidArgumentsToTrueWhenAllValidationsPass
	"ValidArguments should be set to true when all validations pass"

	| app cli cmd cust |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	cust := Customer newWithName: (CustomerName newWithFirst: 'Joey' Last: 'Smith').
	app domain customers addCust: cust.
	cmd := UpdateCustWithLast newWithCust: cust id Last: 'Smithe'.
	"Command initializeWithApp: app."
	cmd validate.
	self
		assert: [ cmd isValid ]
		description: 'validArguments should be set to true when all validations pass'