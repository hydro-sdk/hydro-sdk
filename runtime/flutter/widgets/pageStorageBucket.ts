
import { IBuildContext } from "./buildContext";
declare const flutter: {
widgets: {
pageStorageBucket: (this: void, pageStorageBucket: IPageStorageBucket) => IPageStorageBucket
}
};
export interface IPageStorageBucket


{
writeState: (context: IBuildContext, data: any, props? : {  identifier? : Object | undefined,}) => void;
readState: (context: IBuildContext, props? : {  identifier? : Object | undefined,}) => any;
}export class PageStorageBucket


{public constructor(){
flutter.widgets.pageStorageBucket(this);}
    private readonly _dart_writeState: (context: IBuildContext, data: any, props? : {  identifier? : Object | undefined,}) => void = undefined as any;
    private readonly _dart_readState: (context: IBuildContext, props? : {  identifier? : Object | undefined,}) => any = undefined as any;
public writeState(context: IBuildContext, data: any, props? : {  identifier? : Object | undefined,}) : void {
    return this._dart_writeState(context, data, props);
}
public readState(context: IBuildContext, props? : {  identifier? : Object | undefined,}) : any {
    return this._dart_readState(context, props);
}
}
