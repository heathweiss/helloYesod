{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE QuasiQuotes           #-}
{-# LANGUAGE TemplateHaskell       #-}
{-# LANGUAGE TypeFamilies          #-}

module Handler.CreateRoute where

import Import

getCreateRouteR :: Handler Html
getCreateRouteR = defaultLayout $ do
  [whamlet|Creating a new route CreateRouteR:
           <ul>
            <li>run: stack exec -- yesod add-handler and followed the prompts to add the route info.
            <li>Scaffold added route to config/routes.yesodroutes
            <li>going to the page in browser gives: src/Foundation.hs: Non-exhaustive patterns in function isAuthorized, so added the route pattern match for Foundation.isAuthorized
            <li>Scaffold created src/Handler.CreateRoute.hs which is the handler for the new route.
             <ul>
              <li>I added language extensions as copied from Foundation
              <li>I re-wrote CreateRoute.getCreateRouteR by replaceing the default error message with a defaultLayout whamlet.
            <li>Added a new menu item to Foundation.defaultLayout for the route, with: menuItemAccessCallback = True
          |]


{-
getCreateRouteR :: Handler Html
getCreateRouteR = error "Not yet implemented: getCreateRouteR"

-}
