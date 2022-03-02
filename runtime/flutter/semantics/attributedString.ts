import { IList, List } from "../../dart/core/list";
import { IStringAttribute } from "../../dart/ui/stringAttribute";
declare const flutter: {
    semantics: {
        attributedString: (
            this: void,
            attributedString: IAttributedString,
            string: string,
            props: { attributes: IList<IStringAttribute> }
        ) => IAttributedString;
    };
};
export interface IAttributedString {
    string: string;
    attributes: IList<IStringAttribute>;
    getHashCode: () => number;
    toString: () => string;
}
export class AttributedString {
    public readonly string: string = undefined as any;
    public readonly attributes: IList<IStringAttribute> = undefined as any;
    public constructor(
        string: string,
        props: { attributes?: IList<IStringAttribute> }
    ) {
        flutter.semantics.attributedString(this, string, {
            ...attributedStringDefaultProps,
            ...props,
        });
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
const attributedStringDefaultProps = {
    attributes: List.fromArray<IStringAttribute>([]),
};
