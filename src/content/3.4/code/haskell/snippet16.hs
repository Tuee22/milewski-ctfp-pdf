-- UPDATE NOTE: Replaced mappend with (<>) from Semigroup
-- Original⁸: w `mappend` w'
join :: Monoid w => Writer w (Writer w a) -> Writer w a
join (Writer ((Writer (a, w')), w)) = Writer (a, w <> w')