-module(p06).

-import(p05,[reverse/1]).

-export([is_palindrom/1]).

is_palindrom([]) ->
  true;
is_palindrom([_]) ->
  true;
is_palindrom(L) ->
  reverse(L) == L.
