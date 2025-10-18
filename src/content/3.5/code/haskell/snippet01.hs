instance Functor [] where
    fmap = map

instance Applicative [] where
    pure x = [x]
    fs <*> xs = [f x | f <- fs, x <- xs]

instance Monad [] where
    join = concat