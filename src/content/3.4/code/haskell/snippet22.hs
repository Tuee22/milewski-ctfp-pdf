-- UPDATE NOTE: Replaced return with pure (AMP requirement)
-- Original¹⁹: return (words upStr)
process s = do
    upStr <- upCase s
    tell "toWords "
    pure (words upStr)