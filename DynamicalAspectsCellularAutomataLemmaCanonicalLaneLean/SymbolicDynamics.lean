import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean.CellularAutomatonStateSpace

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean

structure SymbolicDynamics {S : CellularAutomatonStateSpace} where
  shiftSpace : Type
  shiftMap : shiftSpace → shiftSpace
  factorMap : (S.cellIndex → S.stateSet) → shiftSpace
  factorMapContinuous : Prop
  factorMapSurjective : Prop
  factorMapCommutes : Prop
  factorMapContinuousTerm : factorMapContinuous
  factorMapSurjectiveTerm : factorMapSurjective
  factorMapCommutesTerm : factorMapCommutes

structure SymbolicDynamicsEvidence {S : CellularAutomatonStateSpace}
    (D : SymbolicDynamics S) where
  factorMapContinuousClosed : D.factorMapContinuous
  factorMapSurjectiveClosed : D.factorMapSurjective
  factorMapCommutesClosed : D.factorMapCommutes

def SymbolicDynamicsClosed {S : CellularAutomatonStateSpace}
    (D : SymbolicDynamics S) : Prop :=
  D.factorMapContinuous ∧ D.factorMapSurjective ∧ D.factorMapCommutes

theorem symbolic_dynamics_closed_from_evidence {S : CellularAutomatonStateSpace}
    (D : SymbolicDynamics S) (E : SymbolicDynamicsEvidence D) : SymbolicDynamicsClosed D := by
  exact And.intro E.factorMapContinuousClosed
    (And.intro E.factorMapSurjectiveClosed E.factorMapCommutesClosed)

end DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean
end HautevilleHouse