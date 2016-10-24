testing - exceptions
testNewWithFirstLastRaisesErrorOnNilLastName
	"last name is required"

	self should: [ Customer newWithFirst: 'Joe' Last: nil] raise: Error