-- UPDATE NOTE: Writer data type for context 
-- (defined elsewhere as: newtype Writer w a = Writer (a, w))
-- UPDATE NOTE: Helper function to extract values from Writer
runWriter :: Writer w a -> (a, w)
runWriter (Writer x) = x

-- UPDATE NOTE: Modern Monad requires Applicative superclass
-- Original¹⁰: return a = Writer (a, mempty); w `mappend` w'
instance (Monoid w) => Applicative (Writer w) where
    pure a = Writer (a, mempty)
    -- UPDATE NOTE: pure replaces return
    Writer (f, w) <*> Writer (a, w') = Writer (f a, w <> w')

instance (Monoid w) => Monad (Writer w) where
    (Writer (a, w)) >>= k = let (a', w') = runWriter (k a)
                            in Writer (a', w <> w')
                            -- UPDATE NOTE: (<>) replaces mappend