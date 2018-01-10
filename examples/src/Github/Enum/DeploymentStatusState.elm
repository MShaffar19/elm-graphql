-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 2.0.1
-- Target elm package version 5.0.0
-- https://github.com/dillonkearns/graphqelm


module Github.Enum.DeploymentStatusState exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The possible states for a deployment status.

  - Pending - The deployment is pending.
  - Success - The deployment was successful.
  - Failure - The deployment has failed.
  - Inactive - The deployment is inactive.
  - Error - The deployment experienced an error.

-}
type DeploymentStatusState
    = Pending
    | Success
    | Failure
    | Inactive
    | Error


decoder : Decoder DeploymentStatusState
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "PENDING" ->
                        Decode.succeed Pending

                    "SUCCESS" ->
                        Decode.succeed Success

                    "FAILURE" ->
                        Decode.succeed Failure

                    "INACTIVE" ->
                        Decode.succeed Inactive

                    "ERROR" ->
                        Decode.succeed Error

                    _ ->
                        Decode.fail ("Invalid DeploymentStatusState type, " ++ string ++ " try re-running the graphqelm CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : DeploymentStatusState -> String
toString enum =
    case enum of
        Pending ->
            "PENDING"

        Success ->
            "SUCCESS"

        Failure ->
            "FAILURE"

        Inactive ->
            "INACTIVE"

        Error ->
            "ERROR"
