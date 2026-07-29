import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean.CellularAutomatonStateSpace

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean

structure Equicontinuity {S : CellularAutomatonStateSpace} where
  equicontinuousFamily : Prop
  sensitiveDependence : Prop
  lyapunovStable : Prop
  equicontinuousFamilyTerm : equicontinuousFamily
  sensitiveDependenceTerm : sensitiveDependence
  lyapunovStableTerm : lyapunovStable

structure EquicontinuityEvidence {S : CellularAutomatonStateSpace}
    (E : Equicontinuity S) where
  equicontinuousFamilyClosed : E.equicontinuousFamily
  sensitiveDependenceClosed : E.sensitiveDependence
  lyapunovStableClosed : E.lyapunovStable

def EquicontinuityClosed {S : CellularAutomatonStateSpace}
    (E : Equicontinuity S) : Prop :=
  E.equicontinuousFamily ∧ E.sensitiveDependence ∧ E.lyapunovStable

theorem equicontinuity_closed_from_evidence {S : CellularAutomatonStateSpace}
    (Eq : Equicontinuity S) (E : EquicontinuityEvidence Eq) : EquicontinuityClosed Eq := by
  exact And.intro E.equicontinuousFamilyClosed
    (And.intro E.sensitiveDependenceClosed E.lyapunovStableClosed)

end DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean
end HautevilleHouse