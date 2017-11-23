testing - edge cases
testValidateLast_setsLastIsValidToFalseForEmptyLastName
	"test validateLast sets lastIsValid to false when last name is empty"

	| app cli cmd cust |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	cust := Customer newWithName: (CustomerName newWithFirst: 'Joey' Last: 'Smith').
	app domain customers addCust: cust.
	cmd := UpdateCustWithLast newWithCust: cust id Last: ''.
	cmd validate.
	self
		deny: [ cmd lastIsValid ]
		description: 'lastIsValid should be set to false for empty string last name'