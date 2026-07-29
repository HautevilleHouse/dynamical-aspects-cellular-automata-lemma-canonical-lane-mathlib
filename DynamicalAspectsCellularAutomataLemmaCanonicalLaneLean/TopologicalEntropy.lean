import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean.CellularAutomatonStateSpace

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean

structure TopologicalEntropy {S : CellularAutomatonStateSpace} where
  entropyValue : ℝ
  entropyDefined : Prop
  entropyNonnegative : Prop
  entropyInvariantUnderConjugacy : Prop
  entropyDefinedTerm : entropyDefined
  entropyNonnegativeTerm : entropyNonnegative
  entropyInvariantUnderConjugacyTerm : entropyInvariantUnderConjugacy

structure TopologicalEntropyEvidence {S : CellularAutomatonStateSpace}
    (H : TopologicalEntropy S) where
  entropyDefinedClosed : H.entropyDefined
  entropyNonnegativeClosed : H.entropyNonnegative
  entropyInvariantUnderConjugacyClosed : H.entropyInvariantUnderConjugacy

def TopologicalEntropyClosed {S : CellularAutomatonStateSpace}
    (H : TopologicalEntropy S) : Prop :=
  H.entropyDefined ∧ H.entropyNonnegative ∧ H.entropyInvariantUnderConjugacy

theorem topological_entropy_closed_from_evidence {S : CellularAutomatonStateSpace}
    (H : TopologicalEntropy S) (E : TopologicalEntropyEvidence H) : TopologicalEntropyClosed H := by
  exact And.intro E.entropyDefinedClosed
    (And.intro E.entropyNonnegativeClosed E.entropyInvariantUnderConjugacyClosed)

end DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean
end HautevilleHouse