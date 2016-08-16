testing
testAddCustWithFirstLastAddsValidCustWithEmptyFirstName
	"test edge case - customer gets added even with missing first name"

	| app |
	app := App new.
	app start.
	app addCustWithFirst: '' Last: 'Smith'.
	self assert: [ app customers size = 1 ] description: 'customer not added'