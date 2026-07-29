import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean

structure TopologicalPressure (S : Type) (A : Type) (CA : CellularAutomaton S A) where
  potentialFunction : CA.stateSpace -> ℝ
  partitionFunction : ℕ -> ℝ
  pressureLimit : ℝ
  subadditivity : Prop
  variationalPrinciple : Prop
  phaseTransition : Prop

structure TopologicalPressureEvidence (S : Type) (A : Type) (CA : CellularAutomaton S A) (P : TopologicalPressure S A CA) where
  partitionFunctionClosed : P.partitionFunction = fun (n : ℕ) => 0
  subadditivityClosed : P.subadditivity
  variationalPrincipleClosed : P.variationalPrinciple
  phaseTransitionClosed : P.phaseTransition

def TopologicalPressureClosed (S : Type) (A : Type) (CA : CellularAutomaton S A) (P : TopologicalPressure S A CA) : Prop :=
  P.subadditivity ∧ P.variationalPrinciple ∧ P.phaseTransition

theorem topological_pressure_closed_from_evidence (S : Type) (A : Type) (CA : CellularAutomaton S A) (P : TopologicalPressure S A CA) (E : TopologicalPressureEvidence S A CA P) : TopologicalPressureClosed S A CA P := by
  exact And.intro E.subadditivityClosed (And.intro E.variationalPrincipleClosed E.phaseTransitionClosed)

end DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean
end HautevilleHouse
