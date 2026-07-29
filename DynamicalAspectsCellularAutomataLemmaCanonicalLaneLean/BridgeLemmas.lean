import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean.CellularAutomataConfig

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CellularAutomatonClosed A.automaton

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.closedConfig

end DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean
end HautevilleHouse