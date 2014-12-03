{-# LANGUAGE OverloadedStrings #-}

import Web.scotty

main = scotty 3002 $ do
  get "/" $ do 
    html "This is it!"
