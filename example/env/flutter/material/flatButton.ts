
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
    return flutter.material.flatButton(props);
}