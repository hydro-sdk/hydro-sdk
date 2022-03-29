import { IList } from "../../dart/core/list";
import { IDiagnosticableTree } from "./diagnosticableTree";
import { DiagnosticLevel } from "./diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "./diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "./diagnosticsNode";
import { DiagnosticsTreeStyle } from "./diagnosticsTreeStyle";
export interface IDiagnosticableTreeMixin extends Omit<IDiagnosticableTree> {
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toStringShallow: (props: {
        joiner: string;
        minLevel: DiagnosticLevel;
    }) => string;
    toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string;
    toStringShort: () => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    debugDescribeChildren: () => IList<IDiagnosticsNode>;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
}
