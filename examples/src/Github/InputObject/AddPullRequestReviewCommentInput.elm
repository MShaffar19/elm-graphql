-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 2.0.1
-- Target elm package version 5.0.0
-- https://github.com/dillonkearns/graphqelm


module Github.InputObject.AddPullRequestReviewCommentInput exposing (..)

import Github.InputObject
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


{-| Encode a AddPullRequestReviewCommentInput into a value that can be used as an argument.
-}
encode : AddPullRequestReviewCommentInput -> Value
encode input =
    Encode.maybeObject
        [ ( "clientMutationId", Encode.string |> Encode.optional input.clientMutationId ), ( "pullRequestReviewId", (\(Github.Scalar.Id raw) -> Encode.string raw) input.pullRequestReviewId |> Just ), ( "commitOID", (\(Github.Scalar.GitObjectID raw) -> Encode.string raw) |> Encode.optional input.commitOID ), ( "body", Encode.string input.body |> Just ), ( "path", Encode.string |> Encode.optional input.path ), ( "position", Encode.int |> Encode.optional input.position ), ( "inReplyTo", (\(Github.Scalar.Id raw) -> Encode.string raw) |> Encode.optional input.inReplyTo ) ]


{-| Type for the AddPullRequestReviewCommentInput input object.
-}
type alias AddPullRequestReviewCommentInput =
    { clientMutationId : OptionalArgument String, pullRequestReviewId : Github.Scalar.Id, commitOID : OptionalArgument Github.Scalar.GitObjectID, body : String, path : OptionalArgument String, position : OptionalArgument Int, inReplyTo : OptionalArgument Github.Scalar.Id }
