declare const dart: {
    ui: {};
};
export interface ISemanticsUpdate {
    dispose: () => void;
}
export class SemanticsUpdate {
    private readonly _dart_dispose: () => void = undefined as any;
    public dispose(): void {
        return this._dart_dispose();
    }
}
