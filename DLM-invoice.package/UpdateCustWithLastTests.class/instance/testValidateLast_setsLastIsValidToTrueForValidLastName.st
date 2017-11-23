testing - happy path
testValidateLast_setsLastIsValidToTrueForValidLastName
	"test validateLast sets lastIsValid to true for validLastName"

	| app cli cmd cust |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	cust := Customer newWithName: (CustomerName newWithFirst: 'Joey' Last: 'Smith').
	app domain customers addCust: cust.
	cmd := UpdateCustWithLast newWithCust: cust id Last: 'Smithe'.
	cmd executeCmd.
	self
		assert: [ cmd lastIsValid ]
		description: 'lastIsValid should be set to true when last name is valid'