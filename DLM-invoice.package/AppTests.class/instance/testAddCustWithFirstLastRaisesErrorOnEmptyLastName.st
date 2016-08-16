testing
testAddCustWithFirstLastRaisesErrorOnEmptyLastName
	"test exception - method raises error on empty last name"

	| app |
	app := App new.
	app start.
	self should: [ app addCustWithFirst: 'Joe' Last: '' ] raise: Error