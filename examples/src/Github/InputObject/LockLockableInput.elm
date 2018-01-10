-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 2.0.1
-- Target elm package version 5.0.0
-- https://github.com/dillonkearns/graphqelm


module Github.InputObject.LockLockableInput exposing (..)

import Github.Enum.LockReason
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


{-| Encode a LockLockableInput into a value that can be used as an argument.
-}
encode : LockLockableInput -> Value
encode input =
    Encode.maybeObject
        [ ( "clientMutationId", Encode.string |> Encode.optional input.clientMutationId ), ( "lockableId", (\(Github.Scalar.Id raw) -> Encode.string raw) input.lockableId |> Just ), ( "lockReason", Encode.enum Github.Enum.LockReason.toString |> Encode.optional input.lockReason ) ]


{-| Type for the LockLockableInput input object.
-}
type alias LockLockableInput =
    { clientMutationId : OptionalArgument String, lockableId : Github.Scalar.Id, lockReason : OptionalArgument Github.Enum.LockReason.LockReason }
