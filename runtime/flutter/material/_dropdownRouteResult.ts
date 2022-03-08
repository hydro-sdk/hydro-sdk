declare const flutter: {
    material: {
        _dropdownRouteResult: <T>(
            this: void,
            _dropdownRouteResult: I_DropdownRouteResult<T>,
            result?: T | undefined
        ) => I_DropdownRouteResult<T>;
    };
};
export interface I_DropdownRouteResult<T> {
    getHashCode: () => number;
}
export class _DropdownRouteResult<T> {
    public constructor(result?: T | undefined) {
        flutter.material._dropdownRouteResult(this, result);
    }
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
