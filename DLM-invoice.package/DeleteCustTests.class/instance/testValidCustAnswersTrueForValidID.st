testing
testValidCustAnswersTrueForValidID
	"test that validID answers true for an existing CustID"

	| app cli cmd cust |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	cust := Customer newWithFirst: 'Sara' Last: 'Smith'.
	app customers addCust: cust.
	cmd := DeleteCust newWithID: cust id.
	self assert: [ cmd validCust ] description: 'should have answered true for valid id'