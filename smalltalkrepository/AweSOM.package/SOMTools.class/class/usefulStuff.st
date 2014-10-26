as yet unclassified
usefulStuff

"
SOMUniverse new start: {'TestHarness'}.
SOMUniverse new start: {'MoreBenchmarks'}.
SOMUniverse new start: {'Hello'}.
SOMUniverse new start: {'Echo'. '123'}.
SOMUniverse new start: {'StringTest'}.
SOMUniverse new start: {'All'}.
u := SOMUniverse new.
u eval: '(1 + 2) asString println'.
[u loadAndStoreFromSource: SOMBenchmarkRunner tinyBenchmarkClass] timeToRun.

"