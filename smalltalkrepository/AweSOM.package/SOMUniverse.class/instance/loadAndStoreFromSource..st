loading
loadAndStoreFromSource: source

	| class |
	class := self compiler
		compileSOMClassSource: source
		stub: nil.
	^ self
		globalAt: class somName string
		put: class