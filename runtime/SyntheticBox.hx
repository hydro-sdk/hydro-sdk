package runtime;

interface JITAllocatingRTManagedBox<T, U> {
	public var props:T;

	private var vmObject:Dynamic;

	@:keep
	public function unwrap():U;
}

@:nullSafety(Strict)
interface RTManagedBox<T> {
	private var vmObject:T;

	@:keep
	public function unwrap():T;
}
