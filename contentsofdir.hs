{- this program prints specified extension files  the contents of a directory-}
{- it takes function and path as input -}
{- example function  (\p -> takeExtension p ==".hs") -} 
{- Give a path name -}

import System.FilePath
import Control.Monad (forM)
import System.Directory (doesDirectoryExist, getDirectoryContents)
import System.FilePath ((</>))

getRecursiveContents :: FilePath -> IO [FilePath]

getRecursiveContents topdir = do
  names <- getDirectoryContents topdir
  let properNames = filter (`notElem` [".", ".."]) names
  paths <- forM properNames $ \name -> do
    let path = topdir </> name
    isDirectory <- doesDirectoryExist path
    if isDirectory
      then getRecursiveContents path
      else return [path]
  return (concat paths)


simpleFind :: (FilePath -> Bool) -> FilePath -> IO ()

simpleFind p path = do
  names <- getRecursiveContents path
  let y= filter p names 
  mapM_ putStrLn y
  
