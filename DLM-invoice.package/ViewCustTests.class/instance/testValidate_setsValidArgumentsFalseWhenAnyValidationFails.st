testing
testValidate_setsValidArgumentsFalseWhenAnyValidationFails
	"test that validate sets validArguments to false when any validation fails"

	| app cli cust cmd |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	cust := Customer newWithName: (CustomerName newWithFirst: 'Sam' Last: 'Barry').
	app customers addCust: cust.
	cmd := ViewCust newWithID: -2.
	cmd validate.
	self deny: [ cmd validArguments ] description: 'validationFailureReason should still be nil'