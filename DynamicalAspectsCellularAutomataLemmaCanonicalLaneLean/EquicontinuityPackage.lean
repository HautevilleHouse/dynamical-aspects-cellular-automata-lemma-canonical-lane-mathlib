import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean.CellularAutomataConfig

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean

structure EquicontinuityPackage {S : Type} (A : CellularAutomaton S) where
  equicontinuousPoints : Set (Nat -> S)
  sensitivePoints : Set (Nat -> S)
  equicontinuityClassification : Prop
  sensitivityDensity : Prop

structure EquicontinuityEvidence {S : Type} {A : CellularAutomaton S} (P : EquicontinuityPackage A) where
  equicontinuityClassificationClosed : P.equicontinuityClassification
  sensitivityDensityClosed : P.sensitivityDensity

def EquicontinuityClosed {S : Type} {A : CellularAutomaton S} (P : EquicontinuityPackage A) : Prop :=
  P.equicontinuityClassification ∧ P.sensitivityDensity

theorem equicontinuity_closed_from_evidence {S : Type} {A : CellularAutomaton S} (P : EquicontinuityPackage A) (E : EquicontinuityEvidence P) :
    EquicontinuityClosed P := by
  exact And.intro E.equicontinuityClassificationClosed E.sensitivityDensityClosed

end DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean
end HautevilleHouse