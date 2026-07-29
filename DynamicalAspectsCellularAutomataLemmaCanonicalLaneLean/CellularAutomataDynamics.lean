import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean

structure CellularAutomaton (S : Type) (A : Type) where
  stateSpace : Type u
  alphabet : Type v
  transitionRules : stateSpace -> stateSpace
  neighborhoodPattern : Type w
  localRule : neighborhoodPattern -> alphabet
  globalDynamics : stateSpace -> stateSpace
  gluingCompatibility : Prop
  symbolicSpaceStructure : Prop
  cellularAutomatonState : stateSpace

structure CellularAutomatonEvidence (S : Type) (A : Type) (CA : CellularAutomaton S A) where
  transitionRulesClosed : CA.transitionRules = CA.globalDynamics
  gluingCompatibilityClosed : CA.gluingCompatibility
  symbolicSpaceStructureClosed : CA.symbolicSpaceStructure

def CellularAutomatonClosed (S : Type) (A : Type) (CA : CellularAutomaton S A) : Prop :=
  CA.transitionRules = CA.globalDynamics ∧ CA.gluingCompatibility ∧ CA.symbolicSpaceStructure

theorem cellular_automaton_closed_from_evidence (S : Type) (A : Type) (CA : CellularAutomaton S A) (E : CellularAutomatonEvidence S A CA) : CellularAutomatonClosed S A CA := by
  exact And.intro E.transitionRulesClosed (And.intro E.gluingCompatibilityClosed E.symbolicSpaceStructureClosed)

end DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean
end HautevilleHouse
