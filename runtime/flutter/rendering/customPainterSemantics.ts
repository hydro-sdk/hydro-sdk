
import { IKey } from "../foundation/key";
import { ISet } from "../../dart/core/set";
import { ISemanticsTag } from "../semantics/semanticsTag";
import { IMatrix4 } from "../../vector_math/matrix4";
import { ISemanticsProperties } from "../semantics/semanticsProperties";
import { IRect } from "../../dart/ui/rect";
declare const flutter: {
rendering: {
customPainterSemantics: (this: void, customPainterSemantics: ICustomPainterSemantics, props : {  key? : IKey | undefined, tags? : ISet<ISemanticsTag> | undefined, transform? : IMatrix4 | undefined, properties : ISemanticsProperties, rect : IRect,}) => ICustomPainterSemantics
}
};
export interface ICustomPainterSemantics


{
key: IKey | undefined;
rect: IRect;
transform: IMatrix4 | undefined;
properties: ISemanticsProperties;
tags: ISet<ISemanticsTag> | undefined;
}export class CustomPainterSemantics


{    public readonly key: IKey | undefined = undefined as any;
    public readonly rect: IRect = undefined as any;
    public readonly transform: IMatrix4 | undefined = undefined as any;
    public readonly properties: ISemanticsProperties = undefined as any;
    public readonly tags: ISet<ISemanticsTag> | undefined = undefined as any;
public constructor( props : {  key? : IKey | undefined, tags? : ISet<ISemanticsTag> | undefined, transform? : IMatrix4 | undefined, properties : ISemanticsProperties, rect : IRect,}){
flutter.rendering.customPainterSemantics(this, props);}
}
