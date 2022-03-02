import { ISemanticsAction } from "../../dart/ui/semanticsAction";
declare const flutter: {
    semantics: {
        customSemanticsAction: (
            this: void,
            customSemanticsAction: ICustomSemanticsAction,
            props: { label: string }
        ) => ICustomSemanticsAction;
        customSemanticsActionGetIdentifier: (
            action: ICustomSemanticsAction
        ) => number;
        customSemanticsActionGetAction: (
            id: number
        ) => ICustomSemanticsAction | undefined;
    };
};
export interface ICustomSemanticsAction {
    label: string | undefined;
    hint: string | undefined;
    action: ISemanticsAction | undefined;
    getHashCode: () => number;
    toString: () => string;
}
export class CustomSemanticsAction {
    public readonly label: string | undefined = undefined as any;
    public readonly hint: string | undefined = undefined as any;
    public readonly action: ISemanticsAction | undefined = undefined as any;
    public constructor(props: { label: string }) {
        flutter.semantics.customSemanticsAction(this, props);
    }
    public static getIdentifier(action: ICustomSemanticsAction): number {
        return flutter.semantics.customSemanticsActionGetIdentifier(action);
    }
    public static getAction(id: number): ICustomSemanticsAction | undefined {
        return flutter.semantics.customSemanticsActionGetAction(id);
    }
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
