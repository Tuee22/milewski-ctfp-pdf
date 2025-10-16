-- UPDATE NOTE: Modern Monad requires Applicative superclass
-- Original¹⁸: class Monad m where return :: a -> m a
class Applicative m => Monad m where
    (>>=) :: m a -> (a -> m b) -> m b
    -- UPDATE NOTE: return removed; use pure from Applicative instead