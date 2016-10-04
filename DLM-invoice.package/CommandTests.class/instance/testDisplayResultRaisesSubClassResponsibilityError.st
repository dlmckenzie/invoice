testing - exceptions
testDisplayResultRaisesSubClassResponsibilityError
	"test method raises error, as this is an abstract class method"

	self should: [ Command new executeCmd ] raise: Error