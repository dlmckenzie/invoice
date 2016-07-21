testing
testInitializeWithKeyDescPriceQtyInterface

	|result|
	
	self 
		assert: [ (LineItem new) respondsTo: #initializeWithKey:Desc:Price:Qty: ]
		description: 'Lineitem initializeWithKey:Desc:Price:Qty: does not exist'.
		
	result := LineItem new initializeWithKey: 'A' Desc: 'Part A'  Price: 7.99  Qty: 1. 
	self
		assert: [ result isMemberOf: LineItem ]
		description: 'Method did not answer with LineItem'
	

