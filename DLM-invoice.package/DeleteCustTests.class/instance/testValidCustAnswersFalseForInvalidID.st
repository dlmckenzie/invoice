testing - edge cases
testValidCustAnswersFalseForInvalidID
	"test that validID answers false for a non-existant CustID"

	| app cli cmd |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	cmd := DeleteCust newWithID: 99.
	self deny: [ cmd validCust ] description: 'should have answered false for invalid id'