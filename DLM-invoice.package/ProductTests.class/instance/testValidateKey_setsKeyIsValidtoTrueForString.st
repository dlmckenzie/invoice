testing - happy path
testValidateKey_setsKeyIsValidtoTrueForString
	"test that validateKey answers true when key is valid"

	| prod |
	prod := Product newWithKey: 'A'.
	prod validateKey.
	self assert: [ prod keyIsValid ] description: 'Product validateKey should have set validKey to true'