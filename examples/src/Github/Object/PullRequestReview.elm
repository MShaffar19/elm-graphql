-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 2.0.1
-- Target elm package version 5.0.0
-- https://github.com/dillonkearns/graphqelm


module Github.Object.PullRequestReview exposing (..)

import Github.Enum.CommentAuthorAssociation
import Github.Enum.CommentCannotUpdateReason
import Github.Enum.PullRequestReviewState
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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.PullRequestReview
selection constructor =
    Object.selection constructor


{-| The actor who authored the comment.
-}
author : SelectionSet selection Github.Interface.Actor -> FieldDecoder (Maybe selection) Github.Object.PullRequestReview
author object =
    Object.selectionFieldDecoder "author" [] object (identity >> Decode.maybe)


{-| Author's association with the subject of the comment.
-}
authorAssociation : FieldDecoder Github.Enum.CommentAuthorAssociation.CommentAuthorAssociation Github.Object.PullRequestReview
authorAssociation =
    Object.fieldDecoder "authorAssociation" [] Github.Enum.CommentAuthorAssociation.decoder


{-| Identifies the pull request review body.
-}
body : FieldDecoder String Github.Object.PullRequestReview
body =
    Object.fieldDecoder "body" [] Decode.string


{-| The body of this review rendered to HTML.
-}
bodyHTML : FieldDecoder Github.Scalar.Html Github.Object.PullRequestReview
bodyHTML =
    Object.fieldDecoder "bodyHTML" [] (Decode.string |> Decode.map Github.Scalar.Html)


{-| The body of this review rendered as plain text.
-}
bodyText : FieldDecoder String Github.Object.PullRequestReview
bodyText =
    Object.fieldDecoder "bodyText" [] Decode.string


{-| A list of review comments for the current pull request review.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
comments : ({ first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String } -> { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String }) -> SelectionSet selection Github.Object.PullRequestReviewCommentConnection -> FieldDecoder selection Github.Object.PullRequestReview
comments fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionFieldDecoder "comments" optionalArgs object identity


{-| Identifies the commit associated with this pull request review.
-}
commit : SelectionSet selection Github.Object.Commit -> FieldDecoder (Maybe selection) Github.Object.PullRequestReview
commit object =
    Object.selectionFieldDecoder "commit" [] object (identity >> Decode.maybe)


{-| Identifies the date and time when the object was created.
-}
createdAt : FieldDecoder Github.Scalar.DateTime Github.Object.PullRequestReview
createdAt =
    Object.fieldDecoder "createdAt" [] (Decode.string |> Decode.map Github.Scalar.DateTime)


{-| Check if this comment was created via an email reply.
-}
createdViaEmail : FieldDecoder Bool Github.Object.PullRequestReview
createdViaEmail =
    Object.fieldDecoder "createdViaEmail" [] Decode.bool


{-| The actor who edited the comment.
-}
editor : SelectionSet selection Github.Interface.Actor -> FieldDecoder (Maybe selection) Github.Object.PullRequestReview
editor object =
    Object.selectionFieldDecoder "editor" [] object (identity >> Decode.maybe)


id : FieldDecoder Github.Scalar.Id Github.Object.PullRequestReview
id =
    Object.fieldDecoder "id" [] (Decode.string |> Decode.map Github.Scalar.Id)


{-| The moment the editor made the last edit
-}
lastEditedAt : FieldDecoder (Maybe Github.Scalar.DateTime) Github.Object.PullRequestReview
lastEditedAt =
    Object.fieldDecoder "lastEditedAt" [] (Decode.string |> Decode.map Github.Scalar.DateTime |> Decode.maybe)


{-| Identifies when the comment was published at.
-}
publishedAt : FieldDecoder (Maybe Github.Scalar.DateTime) Github.Object.PullRequestReview
publishedAt =
    Object.fieldDecoder "publishedAt" [] (Decode.string |> Decode.map Github.Scalar.DateTime |> Decode.maybe)


{-| Identifies the pull request associated with this pull request review.
-}
pullRequest : SelectionSet selection Github.Object.PullRequest -> FieldDecoder selection Github.Object.PullRequestReview
pullRequest object =
    Object.selectionFieldDecoder "pullRequest" [] object identity


{-| The repository associated with this node.
-}
repository : SelectionSet selection Github.Object.Repository -> FieldDecoder selection Github.Object.PullRequestReview
repository object =
    Object.selectionFieldDecoder "repository" [] object identity


{-| The HTTP path permalink for this PullRequestReview.
-}
resourcePath : FieldDecoder Github.Scalar.Uri Github.Object.PullRequestReview
resourcePath =
    Object.fieldDecoder "resourcePath" [] (Decode.string |> Decode.map Github.Scalar.Uri)


{-| Identifies the current state of the pull request review.
-}
state : FieldDecoder Github.Enum.PullRequestReviewState.PullRequestReviewState Github.Object.PullRequestReview
state =
    Object.fieldDecoder "state" [] Github.Enum.PullRequestReviewState.decoder


{-| Identifies when the Pull Request Review was submitted
-}
submittedAt : FieldDecoder (Maybe Github.Scalar.DateTime) Github.Object.PullRequestReview
submittedAt =
    Object.fieldDecoder "submittedAt" [] (Decode.string |> Decode.map Github.Scalar.DateTime |> Decode.maybe)


{-| The HTTP URL permalink for this PullRequestReview.
-}
url : FieldDecoder Github.Scalar.Uri Github.Object.PullRequestReview
url =
    Object.fieldDecoder "url" [] (Decode.string |> Decode.map Github.Scalar.Uri)


{-| Check if the current viewer can delete this object.
-}
viewerCanDelete : FieldDecoder Bool Github.Object.PullRequestReview
viewerCanDelete =
    Object.fieldDecoder "viewerCanDelete" [] Decode.bool


{-| Check if the current viewer can update this object.
-}
viewerCanUpdate : FieldDecoder Bool Github.Object.PullRequestReview
viewerCanUpdate =
    Object.fieldDecoder "viewerCanUpdate" [] Decode.bool


{-| Reasons why the current viewer can not update this comment.
-}
viewerCannotUpdateReasons : FieldDecoder (List Github.Enum.CommentCannotUpdateReason.CommentCannotUpdateReason) Github.Object.PullRequestReview
viewerCannotUpdateReasons =
    Object.fieldDecoder "viewerCannotUpdateReasons" [] (Github.Enum.CommentCannotUpdateReason.decoder |> Decode.list)


{-| Did the viewer author this comment.
-}
viewerDidAuthor : FieldDecoder Bool Github.Object.PullRequestReview
viewerDidAuthor =
    Object.fieldDecoder "viewerDidAuthor" [] Decode.bool
