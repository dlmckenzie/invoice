testing
testValidCustAnswersTrueWhenCustFound
	"test that method answers true for valid cust id"

	| app cli cust id |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	app customers addCust: (Customer newWithFirst: 'Jenny' Last: 'Schultz').
	app customers addCust: (Customer newWithFirst: 'Jim' Last: 'Jones').
	cust := Customer newWithFirst: 'Sara' Last: 'Smith'.
	id := cust id.
	app customers addCust: cust.
	self
		assert: [ (ViewCust newWithID: id) validCust ]
		description: 'ViewCust validCust should have answered true'