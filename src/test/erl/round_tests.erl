-module(round_tests).

-export([test/0]).

test() ->
    %% Test round() on small integers, large integers, bigints, and non-numbers.
    {round(0), round(0.0),
     round(123), round(65536), round(123456789), round(123456789123456789123456789), round(1.0e299),
     round(-123), round(-65536), round(-123456789), round(-123456789123456789123456789), round(-1.0e299),
     catch(round([])), catch(round(atom)), catch(round("abcd")), catch(round([a|b])), catch(round(self()))
    }.