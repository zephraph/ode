let team1soldier = [
  `             `,
  `             `,
  `      ◘      `,
  `     ▞█▚     `,
  `     ▞ ▚     `,
  `             `,
]
let team1general = [
  `    ▐▟▅▙▌    `,
  `     ▜◘▛     `,
  `    ▃▞ ▚▃    `,
  `    ▞▚ ▞▚    `,
  `   ▀ ▟▀▙ ▀   `,
  `    ▗█ █▖    `,
]

let team2soldier = [
  `             `,
  `             `,
  `     ◥◙◤     `,
  `     ▞█▚     `,
  `    ▞▞▀▚▚    `,
  `             `,
]

let team2general = [
  `     ▲▲▲     `,
  `     ▜◙▛     `,
  `    ▗▞ ▚▖    `,
  `   ▗▞▚▂▞▚▖   `,
  `   ▀ ▛ ▜ ▀   `,
  `    ▟▙▂▟▙    `,
]

type rank =
  | Soldier
  | General

type pawn_status =
  | Held
  | Lost

type team = Team1 | Team2

type pawn = {
  kind: rank,
  x: int,
  y: int,
  status: pawn_status,
  team: team,
}

let createGeneral = (team: team, x: int, y: int) => {
  {kind: General, x: x, y: y, status: Held, team: team}
}

let createSoldier = (team: team, x: int, y: int) => {
  {kind: Soldier, x: x, y: y, status: Held, team: team}
}
