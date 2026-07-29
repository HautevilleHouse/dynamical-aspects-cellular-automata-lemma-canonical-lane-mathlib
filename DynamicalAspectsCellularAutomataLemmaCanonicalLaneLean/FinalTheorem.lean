import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean

def ConstrainedCellularAutomataClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cellular_automata_endgame (A : AdmissibleClass) : ConstrainedCellularAutomataClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean
end HautevilleHouse
