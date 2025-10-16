-- UPDATE NOTE: Modern Monad requires Applicative superclass (AMP since GHC 7.10)
-- Original¹⁷: class Monad m where return :: a -> m a
class Applicative m => Monad m where 
    (>=>) :: (a -> m b) -> (b -> m c) -> (a -> m c)
    -- UPDATE NOTE: return removed; use pure from Applicative instead