-module(p13).

-export([decode/1]).

decode([]) -> [];

decode(L) ->
  decode(L, []).

decode([{0, _}|T], A) ->
  decode(T, A);

decode([{N, I}|T], A) ->
  decode([{N-1, I}|T], [I|A]);

decode([], A) ->
  p05:reverse(A).