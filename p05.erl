-module(p05).
-author("serzh").

-export([reverse/1]).

reverse(L) ->
  reverse(L, []).

reverse([], A) ->
  A;

reverse([H|T],A) ->
  reverse(T, [H|A]).