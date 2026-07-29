import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean.CellularAutomataConfig

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean

structure AttractorPackage {S : Type} (A : CellularAutomaton S) where
  periodicPoints : List (Nat -> S)
  basins : List (List (Nat -> S))
  attractorExists : Prop
  basinCoverage : Prop

structure AttractorEvidence {S : Type} {A : CellularAutomaton S} (P : AttractorPackage A) where
  attractorExistsClosed : P.attractorExists
  basinCoverageClosed : P.basinCoverage

def AttractorClosed {S : Type} {A : CellularAutomaton S} (P : AttractorPackage A) : Prop :=
  P.attractorExists ∧ P.basinCoverage

theorem attractor_closed_from_evidence {S : Type} {A : CellularAutomaton S} (P : AttractorPackage A) (E : AttractorEvidence P) :
    AttractorClosed P := by
  exact And.intro E.attractorExistsClosed E.basinCoverageClosed

end DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean
end HautevilleHouse