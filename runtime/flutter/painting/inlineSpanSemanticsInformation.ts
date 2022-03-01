
import { IGestureRecognizer } from "../gestures/gestureRecognizer";
import { IList,List } from "../../dart/core/list";
import { IStringAttribute } from "../../dart/ui/stringAttribute";
declare const flutter: {
painting: {
inlineSpanSemanticsInformation: (this: void, inlineSpanSemanticsInformation: IInlineSpanSemanticsInformation, text: string, props : {  isPlaceholder : boolean, recognizer? : IGestureRecognizer | undefined, semanticsLabel? : string | undefined, stringAttributes : IList<IStringAttribute>,}) => IInlineSpanSemanticsInformation
}
};
export interface IInlineSpanSemanticsInformation


{
text: string;
semanticsLabel: string | undefined;
recognizer: IGestureRecognizer | undefined;
isPlaceholder: boolean;
requiresOwnNode: boolean;
stringAttributes: IList<IStringAttribute>;
getHashCode: () => number;
toString: () => string;
}export class InlineSpanSemanticsInformation


{    public static placeholder = new InlineSpanSemanticsInformation("￼",{ isPlaceholder: true });
    public readonly text: string = undefined as any;
    public readonly semanticsLabel: string | undefined = undefined as any;
    public readonly recognizer: IGestureRecognizer | undefined = undefined as any;
    public readonly isPlaceholder: boolean = undefined as any;
    public readonly requiresOwnNode: boolean = undefined as any;
    public readonly stringAttributes: IList<IStringAttribute> = undefined as any;
public constructor(text: string, props : {  isPlaceholder? : boolean, recognizer? : IGestureRecognizer | undefined, semanticsLabel? : string | undefined, stringAttributes? : IList<IStringAttribute>,}){
flutter.painting.inlineSpanSemanticsInformation(this, text, {
...inlineSpanSemanticsInformationDefaultProps,
...props
});}
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
public getHashCode() : number {
    return this._dart_getHashCode();
}
public toString() : string {
    return this._dart_toString();
}
}
const inlineSpanSemanticsInformationDefaultProps = {
    isPlaceholder: false,
    stringAttributes: List.fromArray<IStringAttribute>([]),
};
