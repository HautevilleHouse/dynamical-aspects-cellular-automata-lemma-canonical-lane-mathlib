import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean

structure TopologicalEntropyEstimatePackage where
  cellularSpace : Type u
  shiftAction : Type v
  localRule : cellularSpace → cellularSpace
  topologicalEntropy : ℝ
  entropyUpperBound : Prop
  entropyLowerBound : Prop
  variationalPrinciple : Prop

structure TopologicalEntropyEstimateEvidence (P : TopologicalEntropyEstimatePackage) where
  entropyUpperBoundClosed : P.entropyUpperBound
  entropyLowerBoundClosed : P.entropyLowerBound
  variationalPrincipleClosed : P.variationalPrinciple

def TopologicalEntropyEstimateClosed (P : TopologicalEntropyEstimatePackage) : Prop :=
  P.entropyUpperBound ∧ P.entropyLowerBound ∧ P.variationalPrinciple

theorem topological_entropy_estimate_closed_from_evidence
    (P : TopologicalEntropyEstimatePackage)
    (E : TopologicalEntropyEstimateEvidence P) : TopologicalEntropyEstimateClosed P := by
  exact And.intro E.entropyUpperBoundClosed
    (And.intro E.entropyLowerBoundClosed E.variationalPrincipleClosed)

end DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean
end HautevilleHouse
