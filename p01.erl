-module(p01).

-export([last/1]).

last([]) ->
  undefined;
last([H]) ->
  H;
last([_|T]) ->
  last(T).

