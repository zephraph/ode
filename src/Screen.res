// Provide an interop with node's process.stdout.write
@bs.scope(("process", "stdout")) @bs.val external write: string => unit = "write"

let clear = () => {
  write(`\u001b[2J`)
}

let moveCursor = (~line: int, ~column: int) => {
  write(`\u001b[${string_of_int(line)};${string_of_int(column)}H`)
}

let moveUp = (~lines=1, ()) => {
  write(`\u001b[${string_of_int(lines)}A`)
}

let moveDown = (~lines=1, ()) => {
  write(`\u001b[${string_of_int(lines)}B`)
}

let moveRight = (~columns=1, ()) => {
  write(`\u001b[${string_of_int(columns)}C`)
}

let moveLeft = (~columns=1, ()) => {
  write(`\u001b[${string_of_int(columns)}D`)
}

let draw = (text: string) => {
  write(text)
}

let scan = (~multilineText: string, ~line: int) => {
  draw(List.nth(String.split_on_char('\n', multilineText), line))
}
