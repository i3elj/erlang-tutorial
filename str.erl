-module(str).
-export([run/0]).

run() ->
    Result = string:split("1,2,3,4", ",", all),
    io:format("~w~n",Result).
