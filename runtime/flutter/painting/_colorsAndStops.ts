import { IList } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
declare const flutter: {
    painting: {
        _colorsAndStops: (
            this: void,
            _colorsAndStops: I_ColorsAndStops,
            colors: IList<IColor>,
            stops: IList<number>
        ) => I_ColorsAndStops;
    };
};
export interface I_ColorsAndStops {
    colors: IList<IColor>;
    stops: IList<number>;
}
export class _ColorsAndStops {
    public readonly colors: IList<IColor> = undefined as any;
    public readonly stops: IList<number> = undefined as any;
    public constructor(colors: IList<IColor>, stops: IList<number>) {
        flutter.painting._colorsAndStops(this, colors, stops);
    }
}
