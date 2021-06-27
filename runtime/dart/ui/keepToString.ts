declare const dart: {
    ui: {
        keepToString: (
            this: void,
            keepToString: I_KeepToString
        ) => I_KeepToString;
    };
};
export interface I_KeepToString {}
export class _KeepToString {
    public constructor() {
        dart.ui.keepToString(this);
    }
}
