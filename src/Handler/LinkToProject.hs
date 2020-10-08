{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE QuasiQuotes           #-}
{-# LANGUAGE TemplateHaskell       #-}
{-# LANGUAGE TypeFamilies          #-}

module Handler.LinkToProject where

import Import
import GuruFocus.RoeAnnual as Roe


getLinkToProjectR :: Handler Html
getLinkToProjectR = defaultLayout $ do
  --let name = "my name"::Text
  [whamlet|Linking to investionRIO to load/show the current companyyyy: #{name}
  <p>How to link the projects:
  <ul>
   <li>All entries are done in this helloYesod project.
   <li>Added ../investingRIO to the stack.yaml packages field.
   <li>Added investingRIO to the executable/library/tests/ build-depends, though should test if it is needed in all of these.
   <li>If I edit a investingRIO file, without buiding in the investingRIO project, changes still show up in helloYesod, including not building with an error.
   <li>I am linked, to the temporary name fx in Roe.
   <li>
           
          |]
