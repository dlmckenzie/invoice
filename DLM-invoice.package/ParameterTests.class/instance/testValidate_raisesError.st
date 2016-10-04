testing - exceptions
testValidate_raisesError
"test that validate raises error when directly executed as its intended by be an abstract class"

	self
		should: [ Parameter new validate ]
		raise: Error
		description: 'error should have been raised as this is an abstract class'
	

	
	