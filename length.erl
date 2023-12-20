-module(length).
-export([meters_to/2]).

-define(YARD, 1.0936).
-define(INCH, 39.370).
-define(FOOT, 3.28084).

meters_to(yard, M) -> M * ?YARD;
meters_to(inch, M) -> M * ?INCH;
meters_to(foot, M) -> M * ?FOOT.

% meters_to yard M = M * YARD
