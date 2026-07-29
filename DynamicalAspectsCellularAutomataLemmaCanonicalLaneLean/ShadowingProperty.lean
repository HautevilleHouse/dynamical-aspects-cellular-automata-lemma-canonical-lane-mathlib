import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean

structure ShadowingPropertyPackage where
  cellularSpace : Type u
  shiftAction : Type v
  localRule : cellularSpace → cellularSpace
  pseudoOrbitDistance : ℝ
  epsilon : ℝ
  delta : ℝ
  shadowingHolds : Prop
  omegaLimitClosure : Prop

structure ShadowingPropertyEvidence (P : ShadowingPropertyPackage) where
  shadowingHoldsClosed : P.shadowingHolds
  omegaLimitClosureClosed : P.omegaLimitClosure

def ShadowingPropertyClosed (P : ShadowingPropertyPackage) : Prop :=
  P.shadowingHolds ∧ P.omegaLimitClosure

theorem shadowing_property_closed_from_evidence
    (P : ShadowingPropertyPackage)
    (E : ShadowingPropertyEvidence P) : ShadowingPropertyClosed P := by
  exact And.intro E.shadowingHoldsClosed E.omegaLimitClosureClosed

end DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean
end HautevilleHouse
