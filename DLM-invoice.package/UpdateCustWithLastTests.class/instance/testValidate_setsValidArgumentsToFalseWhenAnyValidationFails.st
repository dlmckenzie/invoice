testing - edge cases
testValidate_setsValidArgumentsToFalseWhenAnyValidationFails
	"ValidArguments should be set to false when any validation fails"

	| app cmd cust |
	app := App new.
	app start.
	cust := Customer newWithName: (CustomerName newWithFirst: 'Joey' Last: 'Smith').
	app customers addCust: cust.
	cmd := UpdateCustWithLast newWithCust: cust id Last: ''.
	Command initializeWithApp: app.
	cmd validate.
	self deny: [ cmd validArguments ] description: 'validArguments should be set to false as last name cannot be empty'