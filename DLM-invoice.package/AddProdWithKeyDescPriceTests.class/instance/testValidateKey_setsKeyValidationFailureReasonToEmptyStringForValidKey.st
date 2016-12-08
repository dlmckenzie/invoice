testing - happy path
testValidateKey_setsKeyValidationFailureReasonToEmptyStringForValidKey
	"method should set validationFailureReason to '' (emtpy string) when key is valid"
	
	AddProdWithKeyDescPrice initializeWithApp: (App new start).
	self
		assert: [(AddProdWithKeyDescPrice newWithKey: 'A100' Desc: 'Part A100' Price: 59.99) keyValidationFailureReason isEmpty ]
		description: 'For valid key, keyValidationFaiulureReason should be emtpy' 
