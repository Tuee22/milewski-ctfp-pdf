-- UPDATE NOTE: Modern typeclass hierarchy
-- Original²²: instance Monad Maybe where return a = Just a
instance Functor Maybe where
    fmap _ Nothing  = Nothing
    fmap f (Just a) = Just (f a)

instance Applicative Maybe where
    pure a = Just a
    -- UPDATE NOTE: pure replaces return
    Just f <*> Just x = Just (f x)
    _ <*> _ = Nothing

instance Monad Maybe where
    Nothing >>= k = Nothing
    Just a  >>= k = k a