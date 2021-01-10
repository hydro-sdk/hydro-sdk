import { IIterable } from "../../../../runtime/dart/core/iterable";
import { any_A01_t01 } from "./any_A01_t01";
import { any_A01_t02 } from "./any_A01_t02";
import { any_A01_t03 } from "./any_A01_t03";
import { any_A01_t04 } from "./any_A01_t04";
import { any_A01_t05 } from "./any_A01_t05";
import { any_A02_t01 } from "./any_A02_t01";

export function allIterableTests(
    create: (
        content: IIterable<any> | undefined,
        props: { isSet: boolean }
    ) => IIterable<any>
) {
    any_A01_t01(create);
    any_A01_t02(create);
    any_A01_t03(create);
    any_A01_t04(create);
    any_A01_t05(create);
    any_A02_t01(create);
}
