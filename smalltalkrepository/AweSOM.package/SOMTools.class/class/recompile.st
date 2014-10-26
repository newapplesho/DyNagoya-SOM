recompiling
recompile

	"SOMTools recompile"
	(PackageInfo named: 'AweSOM') classes
		do: [:class | class compileAll]
		displayingProgress: 'Recompiling AweSOM'.