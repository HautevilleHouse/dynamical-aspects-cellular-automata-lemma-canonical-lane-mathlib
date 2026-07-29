import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean.TransitionRuleDynamics

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean

structure SensitivityClosurePackage {S : CellularAutomatonStateSpace} (T : TransitionRuleDynamics S) where
  sensitivityToInitialConditions : Prop
  periodicPointsDense : Prop
  transitive : Prop
  sensitivityTerm : sensitivityToInitialConditions
  densePeriodicTerm : periodicPointsDense
  transitiveTerm : transitive

def SensitivityClosureClosed {S : CellularAutomatonStateSpace} {T : TransitionRuleDynamics S} (P : SensitivityClosurePackage T) : Prop :=
  P.sensitivityToInitialConditions ∧ P.periodicPointsDense ∧ P.transitive

end DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean
end HautevilleHouse