testing - happy path
testValidateKey_setsKeyIsValidToTrueForExistingProduct
	"test that validateKey sets KeyIsValid to true for existing product
		(prod key found in products)"

	| app cmd prod |
	app := App new start.
	Command initializeWithApp: app.
	prod := Product newWithKey: 'A10'.
	prod updateDescription: 'Part A10'.
	app domain products addProd: prod.
	cmd := UpdateProdWithDesc newWithProd: 'A10' Desc: 'Updated Part A10'.
	self
		assert: [ cmd keyIsValid   ]
		description: 'UpdateProdWithDesc validate should have set keyIsValid instance variable to true'