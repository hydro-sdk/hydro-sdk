export interface IGestureArenaMember {
    acceptGesture: (pointer: number) => void;
    rejectGesture: (pointer: number) => void;
}
