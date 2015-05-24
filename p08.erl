-module(p08).

-export([compress/1]).

compress(L) ->
  compress(L, []).

compress([H1|T1], []) ->
  compress(T1, [H1]);

compress([H1|T1], [H2|_]=A) ->
  if
    H1 == H2 -> compress(T1, A);
    true -> compress(T1, [H1|A])
  end;

compress([], A) -> p05:reverse(A).
