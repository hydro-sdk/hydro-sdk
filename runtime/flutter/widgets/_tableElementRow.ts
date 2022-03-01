
import { ILocalKey } from "../foundation/localKey";
import { IList } from "../../dart/core/list";
import { IElement } from "./element";
declare const flutter: {
widgets: {
_tableElementRow: (this: void, _tableElementRow: I_TableElementRow, props : {  key? : ILocalKey | undefined, children : IList<IElement>,}) => I_TableElementRow
}
};
export interface I_TableElementRow


{
key: ILocalKey | undefined;
children: IList<IElement>;
}export class _TableElementRow


{    public readonly key: ILocalKey | undefined = undefined as any;
    public readonly children: IList<IElement> = undefined as any;
public constructor( props : {  key? : ILocalKey | undefined, children : IList<IElement>,}){
flutter.widgets._tableElementRow(this, props);}
}
