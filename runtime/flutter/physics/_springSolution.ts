import { ISpringDescription } from "./springDescription";
import { SpringType } from "./springType";
export interface I_SpringSolution {
    x: (time: number) => number;
    dx: (time: number) => number;
    getType: () => SpringType;
}
