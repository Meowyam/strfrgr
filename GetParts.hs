import Control.Monad
import Text.Megaparsec
import Text.Megaparsec.Char
import Replace.Megaparsec
import Data.Either
import Data.Maybe
import Data.Void

-- main = do
--   let input = "annotated-6A.txt"
--   contents <- readFile input
--   print "contents"
--   print contents
--   print "split"
--   print $ splitCap starHash contents

-- -- find just cn, qcn, np etc.
starHash :: Parsec Void String String
starHash = string "*" >> manyTill anySingle $ string "#"