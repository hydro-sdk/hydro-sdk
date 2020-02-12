
import { Widget } from '../widget';

export interface flatButton { tag: string; }

interface FlatButtonProps {
    child: Widget;
    onPressed: (this: void) => void;
}

declare const flutter: {
    material: {
        flatButton: (this: void, props: FlatButtonProps) => flatButton;
    }
}

export function FlatButton(this: void, props: FlatButtonProps) {
    print("called ts flatbutton");
    return flutter.material.flatButton(props);
}