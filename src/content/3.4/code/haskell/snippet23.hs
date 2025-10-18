process s =
    upCase s >>= \upStr ->
      tell "toWords " >>= \() ->
        pure (words upStr)