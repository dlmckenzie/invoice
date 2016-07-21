testing
testInitializeWithKeyDescPriceQtySuccessfullyCreatesLineItem

	| lineItem key desc price qty |
	lineItem := LineItem new.
	key := 'A'.
	desc := 'Part A'.
	price := 7.99.
	qty := 1.
	
	lineItem initializeWithKey: key Desc: desc  Price: price  Qty: qty.
	self assert: [ lineItem key = key ] description: 'key not initialized correctly'.
	self assert: [ lineItem desc = desc ] description: 'desc not initialized correctly'.
	self assert: [ lineItem price = price ] description: 'price not initialized correctly'.
	self assert: [ lineItem qty = qty ] description: 'qty not initialized correctly'.
	  
	
	
	

