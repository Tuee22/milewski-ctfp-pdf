-- UPDATE NOTE: Replaced return with pure (AMP requirement)
-- Original²⁰: return (words upStr)
process s =
    upCase s >>= \upStr ->
      tell "toWords " >>= \() ->
        pure (words upStr)