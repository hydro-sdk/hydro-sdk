/**
 * @assertion Iterable<E> where(bool f(E element))
 * Returns a lazy Iterable with all elements that satisfy the predicate f.
 * @description Checks that predicate exception goes through to the caller when
 * the result of this method is iterated over and the target collection is not
 * empty.
 */

import { IIterable ,List} from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function where_A01_t05(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const check = (
        a: IIterable<any>,
        predicate: (e: any) => boolean,
        exc: any
    ) => {
        let actualCount = 0;
        const ret = a.where((e: any) => {
            actualCount++;
            return predicate(e);
        });
        const it = ret.getIterator();
        let threw = false;
        try {
            while (it.moveNext()) {}
        } catch (err) {
            threw = true;
            assert(err.toString() == exc.toString());
        }
        assert(threw == true);
        assert(1 == actualCount);
    };
    const collection = create(List.from([1, 2, 3, 4, 5] as any, {}));

    const allTrue = (e: any) => {
        throw true;
    };
    check(collection, allTrue, true);

    const allFalse = (e: any) => {
        throw false;
    };
    check(collection, allFalse, false);

    const lessThan3 = (e: any) => {
        throw 3;
    };
    check(collection, lessThan3, 3);
}
