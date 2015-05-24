-module(p15).

-export([replicate/2]).

replicate(L, N) ->
  replicate(L, N, []).

replicate([H|T], N, A) ->
  replicate(T, N, add_times(H, N, A));

replicate([], _, A) ->
  p05:reverse(A).

add_times(_, 0, A) ->
  A;

add_times(H, N, A) ->
  add_times(H, N-1, [H|A]).