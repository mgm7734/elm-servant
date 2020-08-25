
import qualified Network.Wai.Handler.Warp   as W
import           System.IO

import           App (app)

main :: IO ()
main = do
  let port     = 3000
      settings = W.setPort port $ W.setBeforeMainLoop
        (hPutStrLn stderr ("listening on port " ++ show port ++ "..."))
        W.defaultSettings
  W.runSettings settings =<< app
