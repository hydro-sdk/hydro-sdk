# SWID Abstract Reduction System (SWARS)

SWARS is a set of highly opinionated building blocks for building referentially transparent transformations over immutable data. It provides a pipelining reducer that opaquely replaces transformations with their results if they've already been executed and a cache management facility to save and restore transformation results between program runs.