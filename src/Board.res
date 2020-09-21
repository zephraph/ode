let drawPawn = (pawns: list<Piece.pawn>, column: int, line: int) => {
  switch List.find((pawn: Piece.pawn) => pawn.x === column && pawn.y === line / 6, pawns) {
  | {team: Team1, status: Held, kind: Soldier} => Piece.team1soldier[mod(line, 6)]
  | {team: Team1, status: Held, kind: General} => Piece.team1general[mod(line, 6)]
  | {team: Team2, status: Held, kind: Soldier} => Piece.team2soldier[mod(line, 6)]
  | {team: Team2, status: Held, kind: General} => Piece.team2general[mod(line, 6)]
  | exception Not_found => "             "
  | _ => "             "
  }
}

let draw = (pawns: list<Piece.pawn>) => {
  let d_col0 = drawPawn(pawns, 0)
  let d_col1 = drawPawn(pawns, 1)
  let d_col2 = drawPawn(pawns, 2)
  let d_col3 = drawPawn(pawns, 3)
  let d_col4 = drawPawn(pawns, 4)
  Screen.draw(
    ` 
        ┌─────────────┬─────────────┬─────────────┬─────────────┬─────────────┐
        │${00->d_col0}│${00->d_col1}│${00->d_col2}│${00->d_col3}│${00->d_col4}│
        │${01->d_col0}│${01->d_col1}│${01->d_col2}│${01->d_col3}│${01->d_col4}│
        │${02->d_col0}│${02->d_col1}│${02->d_col2}│${02->d_col3}│${02->d_col4}│
        │${03->d_col0}│${03->d_col1}│${03->d_col2}│${03->d_col3}│${03->d_col4}│
        │${04->d_col0}│${04->d_col1}│${04->d_col2}│${04->d_col3}│${04->d_col4}│
        │${05->d_col0}│${05->d_col1}│${05->d_col2}│${05->d_col3}│${05->d_col4}│
        ├─────────────┼─────────────┼─────────────┼─────────────┼─────────────┤
        │${06->d_col0}│${06->d_col1}│${06->d_col2}│${06->d_col3}│${06->d_col4}│
        │${07->d_col0}│${07->d_col1}│${07->d_col2}│${07->d_col3}│${07->d_col4}│
        │${08->d_col0}│${08->d_col1}│${08->d_col2}│${08->d_col3}│${08->d_col4}│
        │${09->d_col0}│${09->d_col1}│${09->d_col2}│${09->d_col3}│${09->d_col4}│
        │${10->d_col0}│${10->d_col1}│${10->d_col2}│${10->d_col3}│${10->d_col4}│
        │${11->d_col0}│${11->d_col1}│${11->d_col2}│${11->d_col3}│${11->d_col4}│
        ├─────────────┼─────────────┼─────────────┼─────────────┼─────────────┤
        │${12->d_col0}│${12->d_col1}│${12->d_col2}│${12->d_col3}│${12->d_col4}│
        │${13->d_col0}│${13->d_col1}│${13->d_col2}│${13->d_col3}│${13->d_col4}│
        │${14->d_col0}│${14->d_col1}│${14->d_col2}│${14->d_col3}│${14->d_col4}│
        │${15->d_col0}│${15->d_col1}│${15->d_col2}│${15->d_col3}│${15->d_col4}│
        │${16->d_col0}│${16->d_col1}│${16->d_col2}│${16->d_col3}│${16->d_col4}│
        │${17->d_col0}│${17->d_col1}│${17->d_col2}│${17->d_col3}│${17->d_col4}│
        ├─────────────┼─────────────┼─────────────┼─────────────┼─────────────┤
        │${18->d_col0}│${18->d_col1}│${18->d_col2}│${18->d_col3}│${18->d_col4}│
        │${19->d_col0}│${19->d_col1}│${19->d_col2}│${19->d_col3}│${19->d_col4}│
        │${20->d_col0}│${20->d_col1}│${20->d_col2}│${20->d_col3}│${20->d_col4}│
        │${21->d_col0}│${21->d_col1}│${21->d_col2}│${21->d_col3}│${21->d_col4}│
        │${22->d_col0}│${22->d_col1}│${22->d_col2}│${22->d_col3}│${22->d_col4}│
        │${23->d_col0}│${23->d_col1}│${23->d_col2}│${23->d_col3}│${23->d_col4}│
        ├─────────────┼─────────────┼─────────────┼─────────────┼─────────────┤
        │${24->d_col0}│${24->d_col1}│${24->d_col2}│${24->d_col3}│${24->d_col4}│
        │${25->d_col0}│${25->d_col1}│${25->d_col2}│${25->d_col3}│${25->d_col4}│
        │${26->d_col0}│${26->d_col1}│${26->d_col2}│${26->d_col3}│${26->d_col4}│
        │${27->d_col0}│${27->d_col1}│${27->d_col2}│${27->d_col3}│${27->d_col4}│
        │${28->d_col0}│${28->d_col1}│${28->d_col2}│${28->d_col3}│${28->d_col4}│
        │${29->d_col0}│${29->d_col1}│${29->d_col2}│${29->d_col3}│${29->d_col4}│
        └─────────────┴─────────────┴─────────────┴─────────────┴─────────────┘
    `,
  )
}
