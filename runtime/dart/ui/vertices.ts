import { IList } from "../core/list";
import { IFloat32List } from "../typed_data/float32List";
import { IInt32List } from "../typed_data/int32List";
import { IUint16List } from "../typed_data/uint16List";
import { IColor } from "./color";
import { IOffset } from "./offset";
import { VertexMode } from "./vertexMode";
declare const dart: {
    ui: {
        vertices: (
            this: void,
            vertices: IVertices,
            mode: VertexMode,
            positions: IList<IOffset>,
            props?: {
                colors?: IList<IColor> | undefined;
                indices?: IList<number> | undefined;
                textureCoordinates?: IList<IOffset> | undefined;
            }
        ) => IVertices;
        verticesRaw: (
            mode: VertexMode,
            positions: IFloat32List,
            props?: {
                colors?: IInt32List | undefined;
                indices?: IUint16List | undefined;
                textureCoordinates?: IFloat32List | undefined;
            }
        ) => IVertices;
    };
};
export interface IVertices {}
export class Vertices {
    public constructor(
        mode: VertexMode,
        positions: IList<IOffset>,
        props?: {
            colors?: IList<IColor> | undefined;
            indices?: IList<number> | undefined;
            textureCoordinates?: IList<IOffset> | undefined;
        }
    ) {
        dart.ui.vertices(this, mode, positions, props);
    }
    public static raw(
        mode: VertexMode,
        positions: IFloat32List,
        props?: {
            colors?: IInt32List | undefined;
            indices?: IUint16List | undefined;
            textureCoordinates?: IFloat32List | undefined;
        }
    ): IVertices {
        return dart.ui.verticesRaw(mode, positions, props);
    }
}
