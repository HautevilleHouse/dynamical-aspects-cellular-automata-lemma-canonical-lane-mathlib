import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean

structure GardenOfEdenConfiguration (S : Type) (A : Type) (CA : CellularAutomaton S A) where
  configuration : CA.stateSpace
  preimageExistence : Prop
  surjectivity : Prop
  injectivity : Prop
  reversibility : Prop

structure GardenOfEdenEvidence (S : Type) (A : Type) (CA : CellularAutomaton S A) (G : GardenOfEdenConfiguration S A CA) where
  preimageExistenceClosed : G.preimageExistence
  surjectivityClosed : G.surjectivity
  injectivityClosed : G.injectivity
  reversibilityClosed : G.reversibility

def GardenOfEdenClosed (S : Type) (A : Type) (CA : CellularAutomaton S A) (G : GardenOfEdenConfiguration S A CA) : Prop :=
  G.preimageExistence ∧ G.surjectivity ∧ G.injectivity ∧ G.reversibility

theorem garden_of_eden_closed_from_evidence (S : Type) (A : Type) (CA : CellularAutomaton S A) (G : GardenOfEdenConfiguration S A CA) (E : GardenOfEdenEvidence S A CA G) : GardenOfEdenClosed S A CA G := by
  exact And.intro E.preimageExistenceClosed
    (And.intro E.surjectivityClosed
      (And.intro E.injectivityClosed E.reversibilityClosed))

end DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean
end HautevilleHouse
