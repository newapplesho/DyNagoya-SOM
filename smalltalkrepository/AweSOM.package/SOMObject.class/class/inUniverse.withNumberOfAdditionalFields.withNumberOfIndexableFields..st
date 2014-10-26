instance creation
inUniverse: universe withNumberOfAdditionalFields: nFields withNumberOfIndexableFields: nIndexableFields

	"It is called 'Additional' because it's the number of fields that are
	allocated in addition to the shared fields"
	| result nilObject |
	nilObject := universe globalNil.
	result := self basicNew
		universe: universe;
		fields: (Array new: nFields);
		indexableFields: (Array new: nIndexableFields withAll: nilObject);
		yourself.
	result
		wipe;
		setDefaultClass;
		initialize;
		postInitialize.
	universe heap allocateFor: result.
	^ result