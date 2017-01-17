testing - edge cases
testValidateLast_setsLastIsValidToFalseForUnchangedLastName
	"test validateLast sets lastIsValid to false when last name is not a string"

	| app cli cmd cust last |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	last := 'Smith'.
	cust := Customer newWithName: (CustomerName newWithFirst: 'Joey' Last: last).
	app customers addCust: cust.
	cmd := UpdateCustWithLast newWithCust: cust id Last: last.
	cmd validate.
	self
		deny: [ cmd lastIsValid ]
		description: 'lastIsValid should be set to false for non string last name'