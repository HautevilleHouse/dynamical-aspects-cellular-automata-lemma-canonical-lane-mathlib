import DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean.ShadowingLemma

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean

structure EntropyPackage {C : CellularAutomatonPackage} (S : ShadowingPackage C) where
  topologicalEntropy : ℝ
  measureEntropy : ℝ
  entropyUpperBound : Prop
  entropyLowerBound : Prop

structure EntropyEvidence {C : CellularAutomatonPackage} {S : ShadowingPackage C} (E : EntropyPackage S) where
  entropyUpperBoundClosed : E.entropyUpperBound
  entropyLowerBoundClosed : E.entropyLowerBound

def EntropyClosed {C : CellularAutomatonPackage} {S : ShadowingPackage C} (E : EntropyPackage S) : Prop :=
  E.entropyUpperBound ∧ E.entropyLowerBound

theorem entropy_closed_from_evidence {C : CellularAutomatonPackage} {S : ShadowingPackage C} (E : EntropyPackage S) (Ev : EntropyEvidence E) : EntropyClosed E := by
  exact And.intro Ev.entropyUpperBoundClosed Ev.entropyLowerBoundClosed

end DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean
end HautevilleHouse