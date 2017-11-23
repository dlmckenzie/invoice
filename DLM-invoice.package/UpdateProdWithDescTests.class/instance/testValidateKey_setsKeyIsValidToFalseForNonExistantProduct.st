testing - edge cases
testValidateKey_setsKeyIsValidToFalseForNonExistantProduct
	"test that validateKey sets KeyIsValid to false when product not found
		(prod key not found in products)"

	| app cmd prod |
	app := App new start.
	Command initializeWithApp: app.
	prod := Product newWithKey: 'A10'.
	prod updateDescription: 'Part A10'.
	app domain products addProd: prod.
	cmd := UpdateProdWithDesc newWithProd: 'A12' Desc: 'Updated Part A12'.
	self
		deny: [ cmd keyIsValid ]
		description: 'UpdateProdWithDesc validate should have set keyIsValid instance variable to false'