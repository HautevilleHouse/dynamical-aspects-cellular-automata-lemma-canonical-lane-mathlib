import DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean.EntropyDynamics

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean

structure AttractorPackage {C : CellularAutomatonPackage} {S : ShadowingPackage C} {E : EntropyPackage S} where
  attractorSet : Set C.configSpace
  basinOfAttraction : Set C.configSpace
  attractorExists : Prop
  attractorClassification : Prop

structure AttractorEvidence {C : CellularAutomatonPackage} {S : ShadowingPackage C} {E : EntropyPackage S} (A : AttractorPackage) where
  attractorExistsClosed : A.attractorExists
  attractorClassificationClosed : A.attractorClassification

def AttractorClosed {C : CellularAutomatonPackage} {S : ShadowingPackage C} {E : EntropyPackage S} (A : AttractorPackage) : Prop :=
  A.attractorExists ∧ A.attractorClassification

theorem attractor_closed_from_evidence {C : CellularAutomatonPackage} {S : ShadowingPackage C} {E : EntropyPackage S} (A : AttractorPackage) (Ev : AttractorEvidence A) : AttractorClosed A := by
  exact And.intro Ev.attractorExistsClosed Ev.attractorClassificationClosed

end DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean
end HautevilleHouse