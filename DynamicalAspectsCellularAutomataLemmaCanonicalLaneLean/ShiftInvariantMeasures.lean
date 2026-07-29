import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean.CellularAutomataConfig

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean

structure ShiftInvariantMeasure where
  measure : Type
  sigmaAlgebra : Type
  shiftInvariant : Prop
  measureSpace : Prop

structure ShiftInvariantMeasuresPackage {S : Type} (A : CellularAutomaton S) where
  measureFamily : ShiftInvariantMeasure
  ergodicDecomposition : Prop
  entropyRate : Prop
  measureConcentration : Prop

structure ShiftInvariantMeasuresEvidence {S : Type} {A : CellularAutomaton S} (P : ShiftInvariantMeasuresPackage A) where
  ergodicDecompositionClosed : P.ergodicDecomposition
  entropyRateClosed : P.entropyRate
  measureConcentrationClosed : P.measureConcentration

def ShiftInvariantMeasuresClosed {S : Type} {A : CellularAutomaton S} (P : ShiftInvariantMeasuresPackage A) : Prop :=
  P.ergodicDecomposition ∧ P.entropyRate ∧ P.measureConcentration

theorem shift_invariant_measures_closed_from_evidence {S : Type} {A : CellularAutomaton S} (P : ShiftInvariantMeasuresPackage A) (E : ShiftInvariantMeasuresEvidence P) :
    ShiftInvariantMeasuresClosed P := by
  exact And.intro E.ergodicDecompositionClosed (And.intro E.entropyRateClosed E.measureConcentrationClosed)

end DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean
end HautevilleHouse