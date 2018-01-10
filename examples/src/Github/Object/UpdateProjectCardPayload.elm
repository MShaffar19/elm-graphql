-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 2.0.1
-- Target elm package version 5.0.0
-- https://github.com/dillonkearns/graphqelm


module Github.Object.UpdateProjectCardPayload exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.UpdateProjectCardPayload
selection constructor =
    Object.selection constructor


{-| A unique identifier for the client performing the mutation.
-}
clientMutationId : FieldDecoder (Maybe String) Github.Object.UpdateProjectCardPayload
clientMutationId =
    Object.fieldDecoder "clientMutationId" [] (Decode.string |> Decode.maybe)


{-| The updated ProjectCard.
-}
projectCard : SelectionSet selection Github.Object.ProjectCard -> FieldDecoder selection Github.Object.UpdateProjectCardPayload
projectCard object =
    Object.selectionFieldDecoder "projectCard" [] object identity
