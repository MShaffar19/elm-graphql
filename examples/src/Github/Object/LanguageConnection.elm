-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 2.0.1
-- Target elm package version 5.0.0
-- https://github.com/dillonkearns/graphqelm


module Github.Object.LanguageConnection exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.LanguageConnection
selection constructor =
    Object.selection constructor


{-| A list of edges.
-}
edges : SelectionSet selection Github.Object.LanguageEdge -> FieldDecoder (Maybe (List (Maybe selection))) Github.Object.LanguageConnection
edges object =
    Object.selectionFieldDecoder "edges" [] object (identity >> Decode.maybe >> Decode.list >> Decode.maybe)


{-| A list of nodes.
-}
nodes : SelectionSet selection Github.Object.Language -> FieldDecoder (Maybe (List (Maybe selection))) Github.Object.LanguageConnection
nodes object =
    Object.selectionFieldDecoder "nodes" [] object (identity >> Decode.maybe >> Decode.list >> Decode.maybe)


{-| Information to aid in pagination.
-}
pageInfo : SelectionSet selection Github.Object.PageInfo -> FieldDecoder selection Github.Object.LanguageConnection
pageInfo object =
    Object.selectionFieldDecoder "pageInfo" [] object identity


{-| Identifies the total count of items in the connection.
-}
totalCount : FieldDecoder Int Github.Object.LanguageConnection
totalCount =
    Object.fieldDecoder "totalCount" [] Decode.int


{-| The total size in bytes of files written in that language.
-}
totalSize : FieldDecoder Int Github.Object.LanguageConnection
totalSize =
    Object.fieldDecoder "totalSize" [] Decode.int
