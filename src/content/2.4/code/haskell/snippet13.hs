{-# LANGUAGE TypeOperators #-}  
-- UPDATE NOTE: Required for type-level programming
-- UPDATE NOTE: Import for modern kind syntax
import Data.Kind (Type)

-- UPDATE NOTE: Replaced * with Type (deprecated since GHC 8.0)
-- Original²³: type Rep f :: *
class Representable f where
    type Rep f :: Type
    tabulate :: (Rep f -> x) -> f x
    index    :: f x -> Rep f -> x