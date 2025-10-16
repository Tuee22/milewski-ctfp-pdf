-- UPDATE NOTE: Added Semigroup instance (required since GHC 8.4)
instance Semigroup [a] where
    (<>) = (++)
    -- UPDATE NOTE: (<>) replaces deprecated mappend

-- Original⁴: instance Monoid [a] where mappend = (++)
instance Monoid [a] where
    mempty = []