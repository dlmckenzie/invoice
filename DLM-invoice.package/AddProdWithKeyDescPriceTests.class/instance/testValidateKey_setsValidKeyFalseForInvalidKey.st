testing - edge cases
testValidateKey_setsValidKeyFalseForInvalidKey
	"test interface"
	
	| app |
	app := App new.
	app start.
	app products addProd: (Product newWithKey: 'A10').
	AddProdWithKeyDescPrice initializeWithApp: app.
	self
		deny: [ (AddProdWithKeyDescPrice newWithKey: 'A10' Desc: 'Part A10' Price: 40) keyIsValid ]
		description: 'descIsValid should be false (due to duplicate key)'