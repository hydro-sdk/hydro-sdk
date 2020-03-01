declare const ts: {
    debugger: (this: void, args: any) => void;
};

export function pauseInDebugger(args: any): void 
{
    ts.debugger(args);
}