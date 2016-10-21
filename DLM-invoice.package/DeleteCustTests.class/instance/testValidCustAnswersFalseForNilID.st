testing - edge cases
testValidCustAnswersFalseForNilID
	"test that validID answers false for a non-existant CustID"

	| app cli cmd |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	cmd := DeleteCust newWithID: nil.
	self deny: [ cmd validCust ] description: 'should have answered false for nil id'