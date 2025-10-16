-- UPDATE NOTE: Writer data type for context 
-- (defined elsewhere as: newtype Writer w a = Writer (a, w))
-- UPDATE NOTE: Modern Monad requires Applicative superclass
-- Original⁹: return a = Writer (a, mempty); s `mappend` s'
instance Monoid w => Applicative (Writer w) where
    pure a = Writer (a, mempty)
    -- UPDATE NOTE: pure replaces return
    Writer (f, w) <*> Writer (a, w') = Writer (f a, w <> w')

instance Monoid w => Monad (Writer w) where
    f >=> g = \a ->
        let Writer (b, s) = f a
            Writer (c, s') = g b
        in Writer (c, s <> s')
        -- UPDATE NOTE: (<>) replaces mappend