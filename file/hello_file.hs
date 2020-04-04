import System.IO

main :: IO ()
main = do
  myFile <- openFile "hello.txt" ReadMode
  firstLine <- hGetLine myFile
  hClose myFile
  putStrLn firstLine
