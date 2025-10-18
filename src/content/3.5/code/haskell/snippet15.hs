-- Writer data type: newtype Writer w a = Writer (a, w)
runWriter :: Writer w a -> (a, w)
runWriter (Writer x) = x

instance (Monoid w) => Applicative (Writer w) where
    pure a = Writer (a, mempty)
    Writer (f, w) <*> Writer (a, w') = Writer (f a, w <> w')

instance (Monoid w) => Monad (Writer w) where
    (Writer (a, w)) >>= k = let (a', w') = runWriter (k a)
                            in Writer (a', w <> w')
