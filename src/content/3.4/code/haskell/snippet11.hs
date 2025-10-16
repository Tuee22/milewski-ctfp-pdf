-- UPDATE NOTE: Replaced mappend with (<>) from Semigroup
-- Original⁷: w `mappend` w'
(Writer (a, w)) >>= f = let Writer (b, w') = f a 
                        in Writer (b, w <> w')