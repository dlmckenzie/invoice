testing
testAddWithKeyAddsProductToProducts
	"test that product gets added to products"

	| prod products key |
	key := 'A1'.
	prod := Product newWithKey: key.
	products := Products new.
	products add: prod.
	self
		assert: [ prod key = (products retrieveByKey: prod key) key ]
		description: 'product unsuccessfully added to products'