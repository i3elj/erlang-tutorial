-module(avg).
-export([main/0]).

sum([]) -> 0;
sum([H|T]) -> H + sum(T).

extract_grades([]) -> [];
extract_grades([{_, Grade}|T]) -> lists:append([Grade], extract_grades(T)).

avg(S) -> sum(extract_grades(S)) / length(S).

main() ->
    Students = [{"Trisha", 5.3}, {"John", 7.8}, {"Mark", 10}],
    Result = sum(extract_grades(Students)),
    Result2 = lists:foldl(fun ({_, Grade}, Sum) ->
                                  Sum + Grade
                          end, 0, Students),
    Result3 = avg(Students),
    io:format("~f~n~f~n~f~n", [Result, Result2, Result3]).
