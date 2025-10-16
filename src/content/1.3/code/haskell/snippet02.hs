-- UPDATE NOTE: Added Semigroup instance (required since GHC 8.4)
instance Semigroup String where
    (<>) = (++)
    -- UPDATE NOTE: (<>) replaces deprecated mappend

-- Original²: instance Monoid String where mappend = (++)
instance Monoid String where
    mempty = ""