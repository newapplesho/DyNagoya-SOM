tests
test08SystemResolveMethod

	| src |
	src := 'resolve: symbol = (
        | class currentclass |
        (self global: symbol) == nil ifFalse: [ ^self global: symbol ].        
        class := self load: symbol.
        (class == nil) ifFalse: [
             currentclass := class.
             [ (self global: (currentclass name)) == nil ] whileTrue: [
                self global: (currentclass name) put: currentclass.
                currentclass := currentclass superclass. ].
            ^class ].
        self error: ''Unable to resolve '' + symbol
    )'.
	self setUpParser: src.
	self assertNoFail: (result := parser apply: #method).
	"self halt."