testing - edge cases
testValidateLast_setsLastIsValidToFalseForNilLastName
	"test validateLast sets lastIsValid to false when last name is nil"

	| app cli cmd cust |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	cust := Customer newWithName: (CustomerName newWithFirst: 'Joey' Last: 'Smith').
	app customers addCust: cust.
	cmd := UpdateCustWithLast newWithCust: cust id Last: nil.
	cmd validate.
	self
		deny: [ cmd lastIsValid ]
		description: 'lastIsValid should be set to false for nil last name'