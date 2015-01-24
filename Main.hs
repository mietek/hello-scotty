import System.Environment
import Web.Scotty

main :: IO ()
main = do
    env <- getEnvironment
    let port = maybe 8080 read $ lookup "PORT" env
    scotty port $
      get "/" $ text "Hello, world!"
