let clear = () => {
  Console.out("\x1b[2J");
};

let moveCursor = (~line: int, ~column: int) => {
  Console.out(
    "\x1b[" ++ string_of_int(line) ++ ";" ++ string_of_int(column) ++ "H",
  );
};

let moveUp = (~lines=1, ()) => {
  Console.out("\x1b[" ++ string_of_int(lines) ++ "A");
};

let moveDown = (~lines=1, ()) => {
  Console.out("\x1b[" ++ string_of_int(lines) ++ "B");
};

let moveRight = (~columns=1, ()) => {
  Console.out("\x1b[" ++ string_of_int(columns) ++ "C");
};

let moveLeft = (~columns=1, ()) => {
  Console.out("\x1b[" ++ string_of_int(columns) ++ "D");
};

let draw = (~text: string) => {
  Console.out(text);
};

let scan = (~multilineText: string, ~line: int) => {
  draw(List.nth(String.split_on_char('\n', multilineText), line));
};
