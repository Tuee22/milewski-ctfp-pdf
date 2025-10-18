instance Functor Maybe where
    fmap _ Nothing  = Nothing
    fmap f (Just a) = Just (f a)

instance Applicative Maybe where
    pure a = Just a
    Just f <*> Just x = Just (f x)
    _ <*> _ = Nothing

instance Monad Maybe where
    Nothing >>= k = Nothing
    Just a  >>= k = k a