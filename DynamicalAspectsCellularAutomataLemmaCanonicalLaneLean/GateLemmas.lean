import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean.CellularAutomataConfig

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.remainderRecorded

end DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean
end HautevilleHouse