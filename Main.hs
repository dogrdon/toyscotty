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
import qualified Database.MongoDB as D
import Control.Monad.IO.Class
import qualified Data.Text.Lazy as T

runQuery :: Pipe -> D.Query -> IO [Document]
runQuery pipe query = access pipe master "text_collections" (find query >>= rest)

main = do
  pipe <- connect $ host "127.0.0.1"
  scotty 3002 $ do
    get "/" $ do
      res <- liftIO $ runQuery pipe (D.select [] "yikyak")
      text $ T.pack $ show res 
   	