-- Writer data type: newtype Writer w a = Writer (a, w)
instance Monoid w => Applicative (Writer w) where
    pure a = Writer (a, mempty)
    Writer (f, w) <*> Writer (a, w') = Writer (f a, w <> w')

instance Monoid w => Monad (Writer w) where
    f >=> g = \a ->
        let Writer (b, s) = f a
            Writer (c, s') = g b
        in Writer (c, s <> s')
