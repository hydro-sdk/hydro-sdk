import { IIterable } from "../../dart/core/iterable";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
declare const flutter: {
    rendering: {
        constraints: (this: void, constraints: IConstraints) => IConstraints;
    };
};
export interface IConstraints {
    getIsTight: () => boolean;
    getIsNormalized: () => boolean;
    debugAssertIsValid: (props: {
        informationCollector?: () => IIterable<IDiagnosticsNode> | undefined;
        isAppliedConstraint: boolean;
    }) => boolean;
}
export class Constraints {
    public constructor() {
        flutter.rendering.constraints(this);
    }
    private readonly _dart_getIsTight: () => boolean = undefined as any;
    private readonly _dart_getIsNormalized: () => boolean = undefined as any;
    private readonly _dart_debugAssertIsValid: (props: {
        informationCollector?: () => IIterable<IDiagnosticsNode> | undefined;
        isAppliedConstraint: boolean;
    }) => boolean = undefined as any;
    public getIsTight(): boolean {
        return this._dart_getIsTight();
    }
    public getIsNormalized(): boolean {
        return this._dart_getIsNormalized();
    }
    public debugAssertIsValid(props: {
        informationCollector?: () => IIterable<IDiagnosticsNode> | undefined;
        isAppliedConstraint?: boolean;
    }): boolean {
        return this._dart_debugAssertIsValid({
            ...debugAssertIsValidDefaultProps,
            ...props,
        });
    }
}
const debugAssertIsValidDefaultProps = {
    isAppliedConstraint: false,
};
