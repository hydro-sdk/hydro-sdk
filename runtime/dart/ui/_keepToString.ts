declare const dart: {
    ui: {
        _keepToString: (
            this: void,
            _keepToString: I_KeepToString
        ) => I_KeepToString;
    };
};
export interface I_KeepToString {}
export class _KeepToString {
    public constructor() {
        dart.ui._keepToString(this);
    }
}
