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

testPass : String
testPass = "[" ++ green "Passed" ++ "]"

testFail : String
testFail = "[" ++ red "Failed" ++ "]"


||| Display result of a simple assertion.
||| Ensure that the result is equal to a given target.
export
assertEq : (Eq a, Show a) => (t : String) -> (recieved : a) -> (expected : a) -> IO ()
assertEq t r e with (r == e)
  | True  = putStr $ testPass ++ " " ++ t ++ "\n"
  | False = putStr $ testFail ++ " " ++ t ++ "\n"
                  ++ "Expected:\n" ++ show r ++ "\n"
                  ++ "Recieved:\n" ++ show e ++ "\n"

--}


