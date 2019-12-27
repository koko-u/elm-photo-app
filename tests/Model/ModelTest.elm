module Model.ModelTest exposing (suite)

import Expect
import Model.Model as Model
import Test exposing (Test, describe, test)


suite : Test
suite =
    describe "Model Test"
        [ test "initial model is empty" <|
            \_ ->
                Model.init
                    |> Expect.equal {}
        ]
