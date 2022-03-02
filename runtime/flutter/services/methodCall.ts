declare const flutter: {
    services: {
        methodCall: (
            this: void,
            methodCall: IMethodCall,
            method: string,
            arguments: any
        ) => IMethodCall;
    };
};
export interface IMethodCall {
    method: string;
    toString: () => string;
}
export class MethodCall {
    public readonly method: string = undefined as any;
    public constructor(method: string, arguments: any) {
        flutter.services.methodCall(this, method, arguments);
    }
    private readonly _dart_toString: () => string = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
}
