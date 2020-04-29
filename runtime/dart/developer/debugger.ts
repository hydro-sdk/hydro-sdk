declare const dart: {
    developer: {
        debugger: (this: void, args: any) => void;
    }
};

export function debugger(args: any | undefined): void {
    dart.developer.debugger(args);
}