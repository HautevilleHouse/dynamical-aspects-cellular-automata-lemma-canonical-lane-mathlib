import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean

structure SubshiftSpace (S : Type) (A : Type) where
  sequenceSpace : Type u
  shiftOperator : sequenceSpace -> sequenceSpace
  forbiddenPatterns : List (List A)
  language : List (List A) -> Prop
  topologicalEntropy : ℝ
  measureTheoreticEntropy : ℝ
  shiftInvariantMeasures : Type v

structure SubshiftEvidence (S : Type) (A : Type) (Sub : SubshiftSpace S A) where
  shiftOperatorClosed : Sub.shiftOperator = fun x => x
  forbiddenPatternsDefined : Sub.forbiddenPatterns ≠ []
  languageClosed : Sub.language Sub.forbiddenPatterns
  topologicalEntropyClosed : Sub.topologicalEntropy ≥ 0
  measureTheoreticEntropyClosed : Sub.measureTheoreticEntropy ≥ 0

def SubshiftClosed (S : Type) (A : Type) (Sub : SubshiftSpace S A) : Prop :=
  Sub.language Sub.forbiddenPatterns ∧ Sub.topologicalEntropy ≥ 0 ∧ Sub.measureTheoreticEntropy ≥ 0

theorem subshift_closed_from_evidence (S : Type) (A : Type) (Sub : SubshiftSpace S A) (E : SubshiftEvidence S A Sub) : SubshiftClosed S A Sub := by
  exact And.intro E.languageClosed (And.intro E.topologicalEntropyClosed E.measureTheoreticEntropyClosed)

end DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean
end HautevilleHouse
