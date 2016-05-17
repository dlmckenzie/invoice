testing
testPriceAnswersPrice
	"test product price answers correct price"
	
	| amt |
	amt := 14.95.
	self assert: [ ((Product new) updatePrice: amt) price = amt  ]  description: 'method did not answer the product''s price' 

