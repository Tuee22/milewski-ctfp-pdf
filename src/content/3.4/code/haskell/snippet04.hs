class Applicative m => Monad m where 
    (>=>) :: (a -> m b) -> (b -> m c) -> (a -> m c)