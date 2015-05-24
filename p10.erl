-module(p10).

-export([encode/1]).

encode([H|T]) ->
  encode(T, {1, H}, []);

encode([]) -> [].b

encode([H|T], {N, I}=A1, A2) ->
  if
    H == I -> encode(T, {N+1, I}, A2);
    true -> encode(T, {1, H}, [A1|A2])
  end;

encode([], A1, A2) ->
  p05:reverse([A1|A2]).
