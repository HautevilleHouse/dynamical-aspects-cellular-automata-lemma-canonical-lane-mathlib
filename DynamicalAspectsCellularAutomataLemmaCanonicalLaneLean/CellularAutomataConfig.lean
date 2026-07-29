import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean

structure CellularAutomaton (S : Type) where
  state : S
  neighbors : List S
  localRule : List S -> S
  globalMap : (Nat -> S) -> (Nat -> S)

def CellularAutomatonClosed {S : Type} (A : CellularAutomaton S) : Prop :=
  (∀ x : Nat -> S, (A.globalMap x) 0 = A.localRule (List.map (λ i => x i) (List.range (List.length A.neighbors)))) ∧
  (∀ x : Nat -> S, (A.globalMap (A.globalMap x)) = A.globalMap x)

structure AdmissibleClass where
  automaton : CellularAutomaton Nat
  closedConfig : CellularAutomatonClosed automaton
  remainderRecorded : Prop

end DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean
end HautevilleHouse