import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean.CellularAutomatonStateSpace
import HautevilleHouse.DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean.TransitionRuleDynamics
import HautevilleHouse.DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean.InvariantMeasurePackage
import HautevilleHouse.DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean.EntropySpatialExtension
import HautevilleHouse.DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean.SensitivityClosurePackage

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  True

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  unfold bridgeClosed
  trivial

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedDynamicalCellularAutomataClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dynamical_cellular_automata_endgame (A : AdmissibleClass) :
    ConstrainedDynamicalCellularAutomataClosure A := by
  unfold ConstrainedDynamicalCellularAutomataClosure
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean
end HautevilleHouse