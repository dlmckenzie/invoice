as yet unclassified
testExecuteRaisesSubClassResponsibilityError
	"test method raises error, as t his is an abstract class method"
	
	self should: [ Command new executeCmd  ] raise: Error


		
	