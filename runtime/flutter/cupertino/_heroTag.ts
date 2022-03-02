import { INavigatorState } from "../widgets/navigatorState";
declare const flutter: {
    cupertino: {
        _heroTag: (
            this: void,
            _heroTag: I_HeroTag,
            navigator?: INavigatorState | undefined
        ) => I_HeroTag;
    };
};
export interface I_HeroTag {
    navigator: INavigatorState | undefined;
    toString: () => string;
    getHashCode: () => number;
}
export class _HeroTag {
    public readonly navigator: INavigatorState | undefined = undefined as any;
    public constructor(navigator?: INavigatorState | undefined) {
        flutter.cupertino._heroTag(this, navigator);
    }
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
