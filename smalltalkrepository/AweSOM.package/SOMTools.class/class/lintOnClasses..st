linting
lintOnClasses: classes

	| env |
	env := ClassEnvironment
		onEnvironment: BrowserEnvironment new
		classes: classes.
	ORLintBrowser
		openRule: RBCompositeLintRule allRules
		environment: env.