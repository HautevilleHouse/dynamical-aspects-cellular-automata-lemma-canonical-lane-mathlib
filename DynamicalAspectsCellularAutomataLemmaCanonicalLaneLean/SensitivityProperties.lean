import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean

structure SensitivityPackage (S : Type) (A : Type) (CA : CellularAutomaton S A) where
  lyapunovExponent : Prop
  expansivity : Prop
  equicontinuity : Prop
  sensitivityInitialConditions : Prop
  gluingRigidity : Prop

structure SensitivityEvidence (S : Type) (A : Type) (CA : CellularAutomaton S A) (Sen : SensitivityPackage S A CA) where
  lyapunovExponentClosed : Sen.lyapunovExponent
  expansivityClosed : Sen.expansivity
  equicontinuityClosed : Sen.equicontinuity
  sensitivityInitialConditionsClosed : Sen.sensitivityInitialConditions
  gluingRigidityClosed : Sen.gluingRigidity

def SensitivityClosed (S : Type) (A : Type) (CA : CellularAutomaton S A) (Sen : SensitivityPackage S A CA) : Prop :=
  Sen.lyapunovExponent ∧ Sen.expansivity ∧ Sen.equicontinuity ∧ Sen.sensitivityInitialConditions ∧ Sen.gluingRigidity

theorem sensitivity_closed_from_evidence (S : Type) (A : Type) (CA : CellularAutomaton S A) (Sen : SensitivityPackage S A CA) (E : SensitivityEvidence S A CA Sen) : SensitivityClosed S A CA Sen := by
  exact And.intro E.lyapunovExponentClosed
    (And.intro E.expansivityClosed
      (And.intro E.equicontinuityClosed
        (And.intro E.sensitivityInitialConditionsClosed E.gluingRigidityClosed)))

end DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean
end HautevilleHouse
