testing
testAddWithKeyAddProductToProducts
	"test that product gets added to products"

	| prod products key |
	key := 'A1'.
	prod := Product newWithKey: key.
	products := Products new.
	products addWithKey: prod key.
	self assert: [ prod key = (products at: key) key ] description: 'product unsuccessfully added to products'