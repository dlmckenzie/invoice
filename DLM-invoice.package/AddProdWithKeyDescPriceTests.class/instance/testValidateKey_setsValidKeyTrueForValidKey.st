testing - happy path
testValidateKey_setsValidKeyTrueForValidKey
	"test interface"

	AddProdWithKeyDescPrice initializeWithApp: (App new start).

	self
		assert: [ (AddProdWithKeyDescPrice newWithKey: 'A10' Desc: 'Part A10' Price: 40) keyIsValid ]
		description: 'keyIsValid should be true'