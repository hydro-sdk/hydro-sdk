export interface PokeHub {
    pokemon: Array<Pokemon>;
}

export interface Pokemon {
    id: number;
    num: string;
    name: string;
    img: string;
    type: Array<string>;
    height: string;
    weight: string;
    candy: string;
    candyCount: number;
    egg: string;
    spawnChance: string;
    avgSpawns: string;
    spawnTime: string;
    multipliers: Array<number>;
    weaknesses: Array<string>;
    next_evolution: Array<NextEvolution>;
}

export interface NextEvolution {
    num: string;
    name: string;
}
