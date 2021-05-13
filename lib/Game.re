type player = {pawns: list(Piece.pawn)};

let loop = () => {
  /* Initialize players  */
  let player1: player = {
    pawns: [
      Piece.createSoldier(0, 0),
      Piece.createSoldier(1, 0),
      Piece.createGeneral(2, 0),
      Piece.createSoldier(3, 0),
      Piece.createSoldier(4, 0),
    ],
  };
  let player2: player = {
    pawns: [
      Piece.createSoldier(0, 4),
      Piece.createSoldier(1, 4),
      Piece.createGeneral(2, 4),
      Piece.createSoldier(3, 4),
      Piece.createSoldier(4, 4),
    ],
  };

  Screen.clear();
  Board.draw(List.append(player1.pawns, player2.pawns));
};
