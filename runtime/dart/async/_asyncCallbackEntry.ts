declare const dart: {
    async: {
        _asyncCallbackEntry: (
            this: void,
            _asyncCallbackEntry: I_AsyncCallbackEntry,
            callback: () => void
        ) => I_AsyncCallbackEntry;
    };
};
export interface I_AsyncCallbackEntry {
    next: I_AsyncCallbackEntry | undefined;
}
export class _AsyncCallbackEntry {
    public readonly next: I_AsyncCallbackEntry | undefined = undefined as any;
    public constructor(callback: () => void) {
        dart.async._asyncCallbackEntry(this, callback);
    }
}
