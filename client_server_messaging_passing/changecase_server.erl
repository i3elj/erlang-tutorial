-module(changecase_server).
-export([start/0, loop/0]).

start() ->
    spawn(changecase_server, main, []).

main() ->
    receive
        {Client, {Str, uppercase}} -> % pattern matching
            Client ! {self(), string:to_upper(Str)};
        {Client, {Str, lowercase}} ->
            Client ! {self(), string:to_lower(Str)}
    end,
    loop().
