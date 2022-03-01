
import { IStackTrace } from "../../dart/core/stackTrace";
import { IList } from "../../dart/core/list";
declare const flutter: {
foundation: {
stackFrame: (this: void, stackFrame: IStackFrame, props : {  className : string, isConstructor : boolean, column : number, line : number, method : string, number : number, package : string, packagePath : string, packageScheme : string, source : string,}) => IStackFrame;
stackFrameFromStackTrace: (stack: IStackTrace) => IList<IStackFrame>;
stackFrameFromStackString: (stack: string) => IList<IStackFrame>;
stackFrameFromStackTraceLine: (line: string) => IStackFrame | undefined
}
};
export interface IStackFrame


{
source: string;
number: number;
packageScheme: string;
package: string;
packagePath: string;
line: number;
column: number;
className: string;
method: string;
isConstructor: boolean;
getHashCode: () => number;
toString: () => string;
}export class StackFrame


{    public static asynchronousSuspension = new StackFrame({ number: -1, column: -1, line: -1, method: "asynchronous suspension", packageScheme: "", package: "", packagePath: "", source: "<asynchronous suspension>" });
    public static stackOverFlowElision = new StackFrame({ number: -1, column: -1, line: -1, method: "...", packageScheme: "", package: "", packagePath: "", source: "..." });
    public readonly source: string = undefined as any;
    public readonly number: number = undefined as any;
    public readonly packageScheme: string = undefined as any;
    public readonly package: string = undefined as any;
    public readonly packagePath: string = undefined as any;
    public readonly line: number = undefined as any;
    public readonly column: number = undefined as any;
    public readonly className: string = undefined as any;
    public readonly method: string = undefined as any;
    public readonly isConstructor: boolean = undefined as any;
public constructor( props : {  className? : string, isConstructor? : boolean, column : number, line : number, method : string, number : number, package : string, packagePath : string, packageScheme : string, source : string,}){
flutter.foundation.stackFrame(this, {
...stackFrameDefaultProps,
...props
});}
public static fromStackTrace(stack: IStackTrace) : IList<IStackFrame>{
return flutter.foundation.stackFrameFromStackTrace(stack);
}public static fromStackString(stack: string) : IList<IStackFrame>{
return flutter.foundation.stackFrameFromStackString(stack);
}public static fromStackTraceLine(line: string) : IStackFrame | undefined{
return flutter.foundation.stackFrameFromStackTraceLine(line);
}    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
public getHashCode() : number {
    return this._dart_getHashCode();
}
public toString() : string {
    return this._dart_toString();
}
}
const stackFrameDefaultProps = {
    className: "",
    isConstructor: false,
};
