declare const flutter: {
    material: {
        _defaultHeroTag: (
            this: void,
            _defaultHeroTag: I_DefaultHeroTag
        ) => I_DefaultHeroTag;
    };
};
export interface I_DefaultHeroTag {
    toString: () => string;
}
export class _DefaultHeroTag {
    public constructor() {
        flutter.material._defaultHeroTag(this);
    }
    private readonly _dart_toString: () => string = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
}
