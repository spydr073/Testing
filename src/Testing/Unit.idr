-----------------------------------------------------------------------------------------[ Module ]
--{1
--                                                                              (\_/)
--                                                                              (o.O)
--                                                                              (> <)
--                                                                             #######
--                                                                           KILLER BUNNY
--                                                                             APPROVED

module Testing.Unit

import public Terminal.Color

%default total
%access private

%flag C "-O3"
%flag C "-g"

--}

--------------------------------------------------------------------------------------------[ API ]
--{1

data Result : Type where
  Fail : (Show e, Show r) => e -> r -> Result
  Pass : Result

Show Result where
  show Pass       = green "PASS"
  show (Fail e r) = red   "FAIL" ++ ": \n\tExpected: " ++ show e ++ "\n\tRecieved: " ++ show r

runTest : (Eq a, Show a) => (expected : a) -> (recieved : a) -> Result
runTest r e with (r == e)
  | True  = Pass
  | False = Fail e r



testPass : String
testPass = "[" ++ green "Passed" ++ "]"

testFail : String
testFail = "[" ++ red "Failed" ++ "]"


||| Display result of a simple assertion.
||| Ensure that the result is equal to a given target.
export
assertEq : (Eq a, Show a) => (t : String) -> (expected : a) -> (recieved : a) -> IO ()
assertEq t r e with (r == e)
  | True  = putStr $ testPass ++ " " ++ t ++ "\n"
  | False = putStr $ testFail ++ " " ++ t ++ "\n"
                  ++ "Expected:\n" ++ show r ++ "\n"
                  ++ "Recieved:\n" ++ show e ++ "\n"

--}


