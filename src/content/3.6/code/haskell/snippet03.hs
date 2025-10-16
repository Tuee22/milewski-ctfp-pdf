-- UPDATE NOTE: Modern Monoid requires Semigroup superclass
-- Original⁵: class Monoid m where mappend :: m -> m -> m
class Semigroup m => Monoid m where
    mempty :: m
    -- UPDATE NOTE: mappend deprecated; use (<>) from Semigroup instead