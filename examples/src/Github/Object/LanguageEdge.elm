-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 2.0.1
-- Target elm package version 5.0.0
-- https://github.com/dillonkearns/graphqelm


module Github.Object.LanguageEdge exposing (..)

import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.Internal.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Internal.Builder.Object as Object
import Graphqelm.Internal.Encode as Encode exposing (Value)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.LanguageEdge
selection constructor =
    Object.selection constructor


cursor : FieldDecoder String Github.Object.LanguageEdge
cursor =
    Object.fieldDecoder "cursor" [] Decode.string


node : SelectionSet selection Github.Object.Language -> FieldDecoder selection Github.Object.LanguageEdge
node object =
    Object.selectionFieldDecoder "node" [] object identity


{-| The number of bytes of code written in the language.
-}
size : FieldDecoder Int Github.Object.LanguageEdge
size =
    Object.fieldDecoder "size" [] Decode.int
