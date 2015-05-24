-module(p12).

-export([decode_modified/1]).

decode_modified([]) -> [];

decode_modified(L) ->
  decode_modified(L, []).

decode_modified([{_,_}=H|T], A) ->
  decode_modified(T, [H|A]);

decode_modified([H|T], A) ->
  decode_modified(T, [{1,H}|A]);

decode_modified([], A) ->
  p05:reverse(p13:decode(A)).