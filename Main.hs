{-# LANGUAGE OverloadedStrings #-}

import Network.HTTP.Types
import Web.Scotty
import Text.Blaze.Html5
import Text.Blaze.Html5.Attributes
import qualified Web.Scotty as S
import qualified Text.Blaze.Html5 as B
import qualified Text.Blaze.Html5.Attributes as A
import Text.Blaze.Html.Renderer.Text
import Database.MongoDB

blaze = S.html . renderHtml


main = scotty 3002 $ do
  get "/" $ do 
   	S.html . renderHtml $ do
   	  body $ do
       h1 "heres a thing"
       ul $ do
         li "this"
         li "or that"
    
