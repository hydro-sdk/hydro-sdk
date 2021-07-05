import { IList } from "../core/list";
import { IPointerData } from "./pointerData";
declare const dart: {
    ui: {
        pointerDataPacket: (
            this: void,
            pointerDataPacket: IPointerDataPacket,
            props: { data: IList<IPointerData> }
        ) => IPointerDataPacket;
    };
};
const pointerDataPacketDefaultProps = {
    data: [],
};
export interface IPointerDataPacket {
    data: IList<IPointerData>;
}
export class PointerDataPacket {
    public readonly data: IList<IPointerData> = undefined as any;
    public constructor(props: { data?: IList<IPointerData> }) {
        dart.ui.pointerDataPacket(this, {
            ...pointerDataPacketDefaultProps,
            ...props,
        });
    }
}
