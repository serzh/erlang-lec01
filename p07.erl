-module(p07).

-export([flatten/1, concat/2]).

concat(L1, L2) ->
  rev_concat(p05:reverse(L1), L2).

rev_concat([], L2) ->
  L2;

rev_concat(L1, []) ->
  L1;

rev_concat([H|T],L2) ->
  rev_concat(T, [H | L2]).

flatten(L) -> flatten(L, []).

flatten([H|T], A) ->
  if
    is_list(H) -> concat(flatten(H, A), flatten(T, A));
    true -> flatten(T, [H|A])
  end;

flatten([], A) -> p05:reverse(A).