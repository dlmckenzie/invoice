collection ops
delete: aProduct
	"delete product"

	self removeKey: aProduct key.
	^ aProduct