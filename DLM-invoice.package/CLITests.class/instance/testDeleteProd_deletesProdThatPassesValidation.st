testing - product
testDeleteProd_deletesProdThatPassesValidation
	"test happy path - method deletes prod"

	| app cli key prod|
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	key := 'A10'.
	prod := Product newWithKey: key.
	app domain products addProd: prod.
	self
		assert: [ app domain products size = 1 ]
		description: 'product did not get added during test setup'.
	cli deleteProd: key.
	self assert: [ app domain products isEmpty ] description: 'product did not get deleted'