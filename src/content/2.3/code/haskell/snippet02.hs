instance Semigroup [a] where
    (<>) = (++)

instance Monoid [a] where
    mempty = []