-module(p09).

-export([pack/1]).

pack(L) ->
  pack(L, [], []).

pack([H1|T2], [], []) ->
  pack(T2, [H1], []);

pack([H|T], [H1|_]=A1, A2) ->
  if
    H == H1 -> pack(T, [H|A1], A2);
    true -> pack(T, [H], [A1|A2])
  end;

pack([], A1, A2) ->
  p05:reverse([A1|A2]).

