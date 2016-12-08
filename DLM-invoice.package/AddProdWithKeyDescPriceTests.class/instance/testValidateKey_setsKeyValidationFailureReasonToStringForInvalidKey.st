testing - happy path
testValidateKey_setsKeyValidationFailureReasonToStringForInvalidKey
	"method should set validationFailureReason to a string containing a description of the error when key is invalid"
	
	AddProdWithKeyDescPrice initializeWithApp: (App new start).
	self
		deny: [(AddProdWithKeyDescPrice newWithKey: '' Desc: 'Part A100' Price: 59.99) keyValidationFailureReason isEmpty ]
		description: 'For invalid key, keyValidationFaiulureReason should contain error' 
