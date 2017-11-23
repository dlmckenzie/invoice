testing - happy path
testValidate_answersTrueForValidProd
	"test method answers true for valid product (prod key found in products)"

	| app cmd prod key|
	app := App new start.
	Command initializeWithApp: app.
	key := 'A10'.
	prod := Product newWithKey: key.
	app domain products addProd: prod.
	cmd := ViewProd newWithKey: key.
	self
		assert: [ cmd isValid ]
		description: 'ViewProd validate should have set isValid instance variable to true'