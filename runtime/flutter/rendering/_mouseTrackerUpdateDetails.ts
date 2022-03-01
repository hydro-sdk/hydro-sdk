
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IPointerEvent } from "../gestures/pointerEvent";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { ILinkedHashMap } from "../../dart/collection/linkedHashMap";
import { IMouseTrackerAnnotation } from "../services/mouseTrackerAnnotation";
import { IMatrix4 } from "../../vector_math/matrix4";
export interface I_MouseTrackerUpdateDetails

 extends IDiagnosticable
{
lastAnnotations: ILinkedHashMap<IMouseTrackerAnnotation, IMatrix4>;
nextAnnotations: ILinkedHashMap<IMouseTrackerAnnotation, IMatrix4>;
previousEvent: IPointerEvent | undefined;
triggeringEvent: IPointerEvent | undefined;
getDevice: () => number;
getLatestEvent: () => IPointerEvent;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
}