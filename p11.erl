-module(p11).

-export([encode_modified/1]).

encode_modified([]) -> [];

encode_modified(L) ->
  encode_modified(p10:encode(L), []).

encode_modified([{1, I}|T], A) ->
  encode_modified(T, [I|A]);

encode_modified([H|T], A) ->
  encode_modified(T, [H|A]);

encode_modified([], A) ->
  p05:reverse(A).

