module Toyscotty.Views.Index where

render = do
	html $ do
		body $ do
			h3 "This is it!"
      		ul $ do
      			li "There it was"
      			li "That is all"