testing - interface
testValidate_interface
	" test method interface"

self
	assert: [ ViewProd new respondsTo: #validate ]
	description: 'Viewprod validate method does not exist'.
self
	assert: [ (ViewProd new validate) isMemberOf: ViewProd ]
	description: 'method did not answer self' 