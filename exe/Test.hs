import Deck
import Blackjack
import Control.Monad.Random (evalRandIO)

main :: IO ()
main = do
  let deck = getShuffledDecks 2
  evalDeck <- evalRandIO deck
  -- print evalDeck
--  let theTable = Table evalDeck [] [] PlayerTurn
  let theTable = makeTable evalDeck
  printTable theTable
--  putStrLn deck
