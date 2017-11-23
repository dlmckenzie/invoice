testing - edge cases
testValidateLast_setsLastIsValidToFalseForNonStringLastName
	"test validateLast sets lastIsValid to false when last name is not a string"

	| app cli cmd cust |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	cust := Customer newWithName: (CustomerName newWithFirst: 'Joey' Last: 'Smith').
	app domain customers addCust: cust.
	cmd := UpdateCustWithLast newWithCust: cust id Last: 9.
	cmd validate.
	self
		deny: [ cmd lastIsValid ]
		description: 'lastIsValid should be set to false for non string last name'