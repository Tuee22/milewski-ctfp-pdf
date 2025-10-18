class Semigroup a where
    (<>) :: a -> a -> a

class Semigroup m => Monoid m where
    mempty :: m