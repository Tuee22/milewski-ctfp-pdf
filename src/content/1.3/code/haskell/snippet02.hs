instance Semigroup String where
    (<>) = (++)

instance Monoid String where
    mempty = ""