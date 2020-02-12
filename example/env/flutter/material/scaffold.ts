export interface scaffold { tag: string }
import { appBar } from './appBar';

interface ScaffoldProps {
    appBar: appBar;
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