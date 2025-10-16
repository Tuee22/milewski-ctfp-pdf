-- UPDATE NOTE: Semigroup is the superclass of Monoid
class Semigroup a where
    (<>) :: a -> a -> a
    -- Associative binary operation

-- UPDATE NOTE: Modern Monoid requires Semigroup superclass
-- Original¹: class Monoid m where mappend :: m -> m -> m
class Semigroup m => Monoid m where
    mempty :: m
    -- UPDATE NOTE: mappend deprecated; use (<>) from Semigroup instead