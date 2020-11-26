declare const dart: {
    developer: {
        debugger: (this: void, args: any) => void;
    };
};

export function pauseInDebugger(args: any | undefined): void {
    dart.developer.debugger(args);
}
