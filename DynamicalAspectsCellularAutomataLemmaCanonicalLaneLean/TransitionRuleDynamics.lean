import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean.CellularAutomatonStateSpace

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean

structure TransitionRuleDynamics (S : CellularAutomatonStateSpace) where
  localRule : S.stateSet → S.stateSet
  globalDynamics : ℕ → S.stateSet → S.stateSet
  localityCondition : Prop
  continuityCondition : Prop
  localityConditionTerm : localityCondition
  continuityConditionTerm : continuityCondition

def TransitionRuleDynamicsClosed {S : CellularAutomatonStateSpace} (T : TransitionRuleDynamics S) : Prop :=
  T.localityCondition ∧ T.continuityCondition

end DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean
end HautevilleHouse