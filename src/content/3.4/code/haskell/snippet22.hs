process s = do
    upStr <- upCase s
    tell "toWords "
    pure (words upStr)