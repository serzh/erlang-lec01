-module(p04).
-author("serzh").

-export([len/1, len2/1]).

len(S) -> len(S, 0).

len([_|T], A) -> len(T, A+1);
len([], A) -> A.

len2([]) -> 0;
len2([_|T]) -> 1+len2(T).