-module(hello).
-export([start/0, colors/1, size/1]).

start() ->
    io:format("Hello World~n").

colors(red) -> "ff0000"; % ; is used for pattern matching continuity
colors(blue) -> "0000ff";
colors(green) -> "00ff00". % the dot is meant to be the end.

size([]) -> 0;
size([_ | Tail]) -> 1 + hello:size(Tail).
