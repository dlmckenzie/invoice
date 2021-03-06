testing - happy path
testValidateKey_setsIsValidTrueForExistingKey
	"test that method sets isValid to true for existing key"

	| app cmd prod key |
	key := 'A10'.
	app := App new start.
	prod := Product newWithKey: key.
	app domain products addProd: prod.
	DeleteProd initializeWithApp: app.
	cmd := DeleteProd newWithKey: key.
	cmd validateKey.
	self assert: [ cmd keyIsValid ] description: 'keyIsValid should be true for existing key'