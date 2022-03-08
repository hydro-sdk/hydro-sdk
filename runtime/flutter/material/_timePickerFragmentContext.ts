import { _TimePickerMode } from "./_timePickerMode";
import { ITimeOfDay } from "./timeOfDay";
declare const flutter: {
    material: {
        _timePickerFragmentContext: (
            this: void,
            _timePickerFragmentContext: I_TimePickerFragmentContext,
            props: {
                mode: _TimePickerMode;
                onHourDoubleTapped: () => void;
                onMinuteDoubleTapped: () => void;
                onModeChange: (value: _TimePickerMode) => void;
                onTimeChange: (value: ITimeOfDay) => void;
                selectedTime: ITimeOfDay;
                use24HourDials: boolean;
            }
        ) => I_TimePickerFragmentContext;
    };
};
export interface I_TimePickerFragmentContext {
    selectedTime: ITimeOfDay;
    mode: _TimePickerMode;
    use24HourDials: boolean;
}
export class _TimePickerFragmentContext {
    public readonly selectedTime: ITimeOfDay = undefined as any;
    public readonly mode: _TimePickerMode = undefined as any;
    public readonly use24HourDials: boolean = undefined as any;
    public constructor(props: {
        mode: _TimePickerMode;
        onHourDoubleTapped: () => void;
        onMinuteDoubleTapped: () => void;
        onModeChange: (value: _TimePickerMode) => void;
        onTimeChange: (value: ITimeOfDay) => void;
        selectedTime: ITimeOfDay;
        use24HourDials: boolean;
    }) {
        flutter.material._timePickerFragmentContext(this, props);
    }
}
