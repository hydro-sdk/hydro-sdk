import { appBar } from './appBar';
import { Widget } from '../widget';

export interface scaffold { tag: string }

interface ScaffoldProps {
    appBar: appBar;
    body?: Widget | undefined;
}

declare const flutter: {
    material: {
        scaffold: (this: void, props: ScaffoldProps) => scaffold;
    }
}

export function Scaffold(this: void, props: ScaffoldProps) {
    print("Called ts scaffold");
    return flutter.material.scaffold(props);
}