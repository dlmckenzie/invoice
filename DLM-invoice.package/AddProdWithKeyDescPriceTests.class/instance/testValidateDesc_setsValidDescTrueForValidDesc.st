testing - happy path
testValidateDesc_setsValidDescTrueForValidDesc
	"test interface"

	self
		assert: [ (AddProdWithKeyDescPrice newWithKey: 'A10' Desc: 'Part A10' Price: 40) descIsValid ]
		description: 'descIsValid should be true'