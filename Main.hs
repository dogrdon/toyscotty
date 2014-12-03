{-# LANGUAGE OverloadedStrings #-}

import Web.Scotty

main = scotty 3002 $ do
  get "/" $ do 
    html "This is it!"
