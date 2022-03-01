
import { ISliverGridDelegate } from "./sliverGridDelegate";
import { ISliverConstraints } from "./sliverConstraints";
import { ISliverGridLayout } from "./sliverGridLayout";
declare const flutter: {
rendering: {
sliverGridDelegateWithMaxCrossAxisExtent: (this: void, sliverGridDelegateWithMaxCrossAxisExtent: ISliverGridDelegateWithMaxCrossAxisExtent, props : {  childAspectRatio : number, crossAxisSpacing : number, mainAxisExtent? : number | undefined, mainAxisSpacing : number, maxCrossAxisExtent : number,}) => ISliverGridDelegateWithMaxCrossAxisExtent
}
};
export interface ISliverGridDelegateWithMaxCrossAxisExtent


{
maxCrossAxisExtent: number;
mainAxisSpacing: number;
crossAxisSpacing: number;
childAspectRatio: number;
mainAxisExtent: number | undefined;
getLayout: (constraints: ISliverConstraints) => ISliverGridLayout;
shouldRelayout: (oldDelegate: unknown) => boolean;
toString: () => string;
getHashCode: () => number;
}export class SliverGridDelegateWithMaxCrossAxisExtent

 implements ISliverGridDelegate
{    public readonly maxCrossAxisExtent: number = undefined as any;
    public readonly mainAxisSpacing: number = undefined as any;
    public readonly crossAxisSpacing: number = undefined as any;
    public readonly childAspectRatio: number = undefined as any;
    public readonly mainAxisExtent: number | undefined = undefined as any;
public constructor( props : {  childAspectRatio? : number, crossAxisSpacing? : number, mainAxisExtent? : number | undefined, mainAxisSpacing? : number, maxCrossAxisExtent : number,}){
flutter.rendering.sliverGridDelegateWithMaxCrossAxisExtent(this, {
...sliverGridDelegateWithMaxCrossAxisExtentDefaultProps,
...props
});}
    private readonly _dart_getLayout: (constraints: ISliverConstraints) => ISliverGridLayout = undefined as any;
    private readonly _dart_shouldRelayout: (oldDelegate: any) => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getLayout(constraints: ISliverConstraints) : ISliverGridLayout {
    return this._dart_getLayout(constraints);
}
public shouldRelayout(oldDelegate: any) : boolean {
    return this._dart_shouldRelayout(oldDelegate);
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
const sliverGridDelegateWithMaxCrossAxisExtentDefaultProps = {
    childAspectRatio: 1.0,
    crossAxisSpacing: 0.0,
    mainAxisSpacing: 0.0,
};
