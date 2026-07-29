import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean.CellularAutomatonStateSpace

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean

structure AttractorStructure {S : CellularAutomatonStateSpace} where
  attractorBasin : Set (S.cellIndex → S.stateSet)
  attractorClosed : Prop
  attractorInvariant : Prop
  attractorMinimal : Prop
  attractorClosedTerm : attractorClosed
  attractorInvariantTerm : attractorInvariant
  attractorMinimalTerm : attractorMinimal

structure AttractorEvidence {S : CellularAutomatonStateSpace}
    (A : AttractorStructure S) where
  attractorClosedClosed : A.attractorClosed
  attractorInvariantClosed : A.attractorInvariant
  attractorMinimalClosed : A.attractorMinimal

def AttractorClosed {S : CellularAutomatonStateSpace}
    (A : AttractorStructure S) : Prop :=
  A.attractorClosed ∧ A.attractorInvariant ∧ A.attractorMinimal

theorem attractor_closed_from_evidence {S : CellularAutomatonStateSpace}
    (A : AttractorStructure S) (E : AttractorEvidence A) : AttractorClosed A := by
  exact And.intro E.attractorClosedClosed
    (And.intro E.attractorInvariantClosed E.attractorMinimalClosed)

end DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean
end HautevilleHouse