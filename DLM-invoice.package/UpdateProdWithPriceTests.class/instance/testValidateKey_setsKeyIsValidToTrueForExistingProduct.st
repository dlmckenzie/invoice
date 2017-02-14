testing - happy path
testValidateKey_setsKeyIsValidToTrueForExistingProduct
	"test that validateKey sets KeyIsValid to true for existing product
		(prod key found in products)"

	| app cmd prod |
	app := App new start.
	Command initializeWithApp: app.
	prod := Product newWithKey: 'A10'.
	prod updateDescription: 20.
	app products addProd: prod.
	cmd := UpdateProdWithPrice newWithKey: 'A10' Price: 50.
	self
		assert: [ cmd keyIsValid   ]
		description: 'UpdateProdWithPrice validate should have set keyIsValid instance variable to true'