import { Diagnosticable } from "./diagnosticable";
import { DiagnosticLevel } from "./diagnosticLevel";
import { DiagnosticsNode } from "./diagnosticsNode";
import { DiagnosticsTreeStyle } from "./diagnosticsTreeStyle";
declare const flutter: {
    foundation: {
        diagnosticableTree: (
            this: void,
            diagnosticableTree: DiagnosticableTree
        ) => DiagnosticableTree;
    };
};
const toStringShallowDefaultProps = {
    joiner: ", ",
    minLevel: DiagnosticLevel.debug,
};
const toStringDeepDefaultProps = {
    minLevel: DiagnosticLevel.debug,
    prefixLineOne: "",
};
export class DiagnosticableTree implements Diagnosticable {
    public constructor() {
        flutter.foundation.diagnosticableTree(this);
    }
    private readonly _dart_toStringShallow: (props: {
        joiner: string;
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => DiagnosticsNode = undefined as any;
    public toStringShallow(props: {
        joiner?: string;
        minLevel?: DiagnosticLevel;
    }) {
        return this._dart_toStringShallow({
            ...toStringShallowDefaultProps,
            ...props,
        });
    }
    public toStringDeep(props: {
        minLevel?: DiagnosticLevel;
        prefixLineOne?: string;
        prefixOtherLines?: string | undefined;
    }) {
        return this._dart_toStringDeep({
            ...toStringDeepDefaultProps,
            ...props,
        });
    }
    public toStringShort() {
        return this._dart_toStringShort();
    }
    public toDiagnosticsNode(props: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) {
        return this._dart_toDiagnosticsNode(props);
    }
}
