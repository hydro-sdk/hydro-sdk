declare const flutter: {
    widgets: {
        _location: (
            this: void,
            _location: I_Location,
            props: {
                name?: string | undefined;
                column: number;
                file: string;
                line: number;
            }
        ) => I_Location;
    };
};
export interface I_Location {
    file: string;
    line: number;
    column: number;
    name: string | undefined;
    toJsonMap: () => { [index: string]: Object | undefined };
    toString: () => string;
}
export class _Location {
    public readonly file: string = undefined as any;
    public readonly line: number = undefined as any;
    public readonly column: number = undefined as any;
    public readonly name: string | undefined = undefined as any;
    public constructor(props: {
        name?: string | undefined;
        column: number;
        file: string;
        line: number;
    }) {
        flutter.widgets._location(this, props);
    }
    private readonly _dart_toJsonMap: () => {
        [index: string]: Object | undefined;
    } = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public toJsonMap(): { [index: string]: Object | undefined } {
        return this._dart_toJsonMap();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
