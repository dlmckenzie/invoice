testing - edge cases
testValidateKey_setsKeyIsValidFalseForEmptyKey
	"test interface"

	| app |
	app := App new start.
	AddProdWithKeyDescPrice initializeWithApp: app.
	"app products addProd: (Product newWithKey: 'A10')."
	self
		deny: [ (AddProdWithKeyDescPrice newWithKey: '' Desc: 'Part A10' Price: 40) keyIsValid ]
		description: 'descIsValid should be false (due to duplicate key)'