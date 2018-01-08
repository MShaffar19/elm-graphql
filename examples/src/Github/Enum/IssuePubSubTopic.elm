-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 1.0.0
-- Target elm package version 4.0.1
-- https://github.com/dillonkearns/graphqelm


module Github.Enum.IssuePubSubTopic exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The possible PubSub channels for an issue.

  - Updated - The channel ID for observing issue updates.
  - Markasread - The channel ID for marking an issue as read.

-}
type IssuePubSubTopic
    = Updated
    | Markasread


decoder : Decoder IssuePubSubTopic
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "UPDATED" ->
                        Decode.succeed Updated

                    "MARKASREAD" ->
                        Decode.succeed Markasread

                    _ ->
                        Decode.fail ("Invalid IssuePubSubTopic type, " ++ string ++ " try re-running the graphqelm CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : IssuePubSubTopic -> String
toString enum =
    case enum of
        Updated ->
            "UPDATED"

        Markasread ->
            "MARKASREAD"
