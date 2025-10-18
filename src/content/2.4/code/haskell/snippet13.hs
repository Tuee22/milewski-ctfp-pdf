{-# LANGUAGE TypeOperators #-}  
import Data.Kind (Type)

class Representable f where
    type Rep f :: Type
    tabulate :: (Rep f -> x) -> f x
    index    :: f x -> Rep f -> x