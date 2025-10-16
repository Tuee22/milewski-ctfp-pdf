-- UPDATE NOTE: Modern typeclass hierarchy
-- Original²¹: instance Monad [] where return x = [x]
instance Functor [] where
    fmap = map
    -- UPDATE NOTE: Functor is required superclass of Applicative

instance Applicative [] where
    pure x = [x]
    -- UPDATE NOTE: pure replaces return
    fs <*> xs = [f x | f <- fs, x <- xs]

instance Monad [] where
    join = concat