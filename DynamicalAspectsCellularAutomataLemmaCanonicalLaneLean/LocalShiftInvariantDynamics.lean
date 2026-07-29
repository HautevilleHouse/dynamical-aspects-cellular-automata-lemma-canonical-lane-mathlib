import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean

structure LocalShiftInvariantDynamicsPackage where
  cellularSpace : Type u
  shiftAction : Type v
  localRule : cellularSpace → cellularSpace
  shiftCommutesLocalRule : Prop
  shiftContinuity : Prop
  forwardOmegaLimit : cellularSpace → Set cellularSpace
  shiftInvariantLimit : Prop

structure LocalShiftInvariantDynamicsEvidence (P : LocalShiftInvariantDynamicsPackage) where
  shiftCommutesLocalRuleClosed : P.shiftCommutesLocalRule
  shiftContinuityClosed : P.shiftContinuity
  shiftInvariantLimitClosed : P.shiftInvariantLimit

def LocalShiftInvariantDynamicsClosed (P : LocalShiftInvariantDynamicsPackage) : Prop :=
  P.shiftCommutesLocalRule ∧ P.shiftContinuity ∧ P.shiftInvariantLimit

theorem local_shift_invariant_dynamics_closed_from_evidence
    (P : LocalShiftInvariantDynamicsPackage)
    (E : LocalShiftInvariantDynamicsEvidence P) : LocalShiftInvariantDynamicsClosed P := by
  exact And.intro E.shiftCommutesLocalRuleClosed
    (And.intro E.shiftContinuityClosed E.shiftInvariantLimitClosed)

end DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean
end HautevilleHouse
