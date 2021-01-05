import { all_t01 } from "./iterable/all_t01";
import { empty_A01_t01 } from "./iterable/empty_A01_t01";
import { generate_A01_t01 } from "./iterable/generate_A01_t01";
import { generate_A02_t01 } from "./iterable/generate_A02_t01";
import { generate_A03_t01 } from "./iterable/generate_A03_t01";
import { generate_A03_t02 } from "./iterable/generate_A03_t02";

function main() {
    empty_A01_t01();
    generate_A01_t01();
    generate_A02_t01();
    generate_A03_t01();
    generate_A03_t02();
    all_t01();
}

main();
