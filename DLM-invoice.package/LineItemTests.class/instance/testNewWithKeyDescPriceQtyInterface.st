testing
testNewWithKeyDescPriceQtyInterface

	"test method interface"

	self
		assert: [ LineItem respondsTo: #newWithKey:Desc:Price:Qty: ]
		description: 'class method newWithKey:Desc:Price:Qty: does not exist'.
	self
		assert: [ (LineItem newWithKey:'A' Desc:'Part A' Price:9.99 Qty: 1) 
			 isMemberOf: LineItem ]
		description: 'Method did not answer with self' 