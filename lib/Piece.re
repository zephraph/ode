type rank =
  | Soldier
  | General;

type pawn_status =
  | Held
  | Lost;

type pawn = {
  kind: rank,
  x: int,
  y: int,
  status: pawn_status,
};

let createGeneral = (~x: int, ~y: int) => {
  {kind: General, x, y, status: Held};
};

let createSoldier = (~x: int, ~y: int) => {
  {kind: Soldier, x, y, status: Held};
};
