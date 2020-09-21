type player = {pawns: list<Piece.pawn>}

let loop = () => {
  /* Initialize players */
  let player1: player = {
    pawns: list{
      Piece.createSoldier(Team1, 0, 4),
      Piece.createSoldier(Team1, 1, 4),
      Piece.createGeneral(Team1, 2, 4),
      Piece.createSoldier(Team1, 3, 4),
      Piece.createSoldier(Team1, 4, 4),
    },
  }
  let player2: player = {
    pawns: list{
      Piece.createSoldier(Team2, 0, 0),
      Piece.createSoldier(Team2, 1, 0),
      Piece.createGeneral(Team2, 2, 0),
      Piece.createSoldier(Team2, 3, 0),
      Piece.createSoldier(Team2, 4, 0),
    },
  }

  Screen.clear()
  Board.draw(List.append(player1.pawns, player2.pawns))
}
