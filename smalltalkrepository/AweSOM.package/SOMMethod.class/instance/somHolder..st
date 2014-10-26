as yet unclassified
somHolder: holder

	super somHolder: holder.
	holder ~= universe globalNil ifTrue: [self inferFieldIndexesFrom: holder]