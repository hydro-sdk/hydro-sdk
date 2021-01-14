import { IIterable } from "../../../../runtime/dart/core/iterable";
import { any_A01_t01 } from "./any_A01_t01";
import { any_A01_t02 } from "./any_A01_t02";
import { any_A01_t03 } from "./any_A01_t03";
import { any_A01_t04 } from "./any_A01_t04";
import { any_A01_t05 } from "./any_A01_t05";
import { any_A02_t01 } from "./any_A02_t01";
import { contains_A01_t01 } from "./contains_A01_t01";
import { elementAt_A01_t01 } from "./elementAt_A01_t01";
import { elementAt_A02_t01 } from "./elementAt_A02_t01";
import { every_A01_t01 } from "./every_A01_t01";
import { every_A01_t02 } from "./every_A01_t02";
import { every_A02_t01 } from "./every_A02_t01";
import { every_A02_t02 } from "./every_A02_t02";
import { every_A03_t01 } from "./every_A03_t01";
import { every_A04_t01 } from "./every_A04_t01";
import { expand_A01_t01 } from "./expand_A01_t01";
import { expand_A01_t02 } from "./expand_A01_t02";
import { expand_A02_t01 } from "./expand_A02_t01";
import { expand_A02_t02 } from "./expand_A02_t02";
import { first_A01_t01 } from "./first_A01_t01";
import { first_A01_t02 } from "./first_A01_t02";
import { first_A02_t01 } from "./first_A02_t01";
import { first_A03_t01 } from "./first_A03_t01";
import { firstWhere_A01_t01 } from "./firstWhere_A01_t01";
import { firstWhere_A02_t01 } from "./firstWhere_A02_t01";
import { firstWhere_A03_t01 } from "./firstWhere_A03_t01";
import { firstWhere_A04_t01 } from "./firstWhere_A04_t01";
import { fold_A01_t01 } from "./fold_A01_t01";
import { fold_A01_t02 } from "./fold_A01_t02";
import { forEach_A01_t01 } from "./forEach_A01_t01";
import { forEach_A01_t02 } from "./forEach_A01_t02";
import { forEach_A02_t01 } from "./forEach_A02_t01";
import { forEach_A03_t01 } from "./forEach_A03_t01";
import { isEmpty_A01_t01 } from "./isEmpty_A01_t01";
import { isNotEmpty_A01_t01 } from "./isNotEmpty_A01_t01";
import { join_A01_t01 } from "./join_A01_t01";
import { join_A01_t02 } from "./join_A01_t02";

export function allIterableTests(
    create: (content: IIterable<any> | undefined) => IIterable<any>,
    props: { isSet: boolean }
) {
    any_A01_t01(create, { isSet: props.isSet });
    any_A01_t02(create, { isSet: props.isSet });
    any_A01_t03(create, { isSet: props.isSet });
    any_A01_t04(create, { isSet: props.isSet });
    any_A01_t05(create, { isSet: props.isSet });
    any_A02_t01(create, { isSet: props.isSet });
    contains_A01_t01(create, { isSet: props.isSet });
    elementAt_A01_t01(create, { isSet: props.isSet });
    elementAt_A02_t01(create);
    every_A01_t01(create);
    every_A01_t02(create);
    every_A02_t01(create);
    every_A02_t02(create);
    every_A03_t01(create);
    every_A04_t01(create);
    expand_A01_t01(create);
    expand_A01_t02(create);
    expand_A02_t01(create);
    expand_A02_t02(create);
    first_A01_t01(create);
    first_A01_t02(create, { isSet: props.isSet });
    first_A02_t01(create);
    first_A03_t01(create);
    firstWhere_A01_t01(create, { isSet: props.isSet });
    firstWhere_A02_t01(create);
    firstWhere_A03_t01(create);
    firstWhere_A04_t01(create, { isSet: props.isSet });
    fold_A01_t01(create);
    fold_A01_t02(create);
    forEach_A01_t01(create);
    forEach_A01_t02(create);
    forEach_A02_t01(create);
    forEach_A03_t01(create);
    isEmpty_A01_t01(create);
    isNotEmpty_A01_t01(create);
    join_A01_t01(create);
    join_A01_t02(create);
}
