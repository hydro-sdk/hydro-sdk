import { ISet } from "../../dart/core/set";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { MaterialState } from "./materialState";
export interface IMaterialStateMixin<T> {
    materialStates: ISet<MaterialState>;
    updateMaterialState: (
        key: MaterialState,
        props?: { onChanged?: (value: boolean) => void | undefined }
    ) => (value: boolean) => void;
    setMaterialState: (_state: MaterialState, isSet: boolean) => void;
    addMaterialState: (_state: MaterialState) => void;
    removeMaterialState: (_state: MaterialState) => void;
    getIsDisabled: () => boolean;
    getIsDragged: () => boolean;
    getIsErrored: () => boolean;
    getIsFocused: () => boolean;
    getIsHovered: () => boolean;
    getIsPressed: () => boolean;
    getIsScrolledUnder: () => boolean;
    getIsSelected: () => boolean;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
}
