testing
testAddCustWithFirstLastAddsValidCustWithEmptyFirstName
	"test edge case - customer gets added even with missing first name"

	| app cli |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	cli addCustWithFirst: '' Last: 'Smith'.
	self assert: [ app customers size = 1 ] description: 'customer not added'