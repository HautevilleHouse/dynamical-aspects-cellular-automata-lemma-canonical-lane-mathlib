import DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean.CellularAutomatonDynamics

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean

structure ShadowingPackage (C : CellularAutomatonPackage) where
  pseudoOrbit : Nat → C.configSpace
  shadowedOrbit : Nat → C.configSpace
  shadowingDistance : Prop
  shadowingHolds : Prop

structure ShadowingEvidence {C : CellularAutomatonPackage} (S : ShadowingPackage C) where
  shadowingDistanceClosed : S.shadowingDistance
  shadowingHoldsClosed : S.shadowingHolds

def ShadowingClosed {C : CellularAutomatonPackage} (S : ShadowingPackage C) : Prop :=
  S.shadowingDistance ∧ S.shadowingHolds

theorem shadowing_closed_from_evidence {C : CellularAutomatonPackage} (S : ShadowingPackage C) (E : ShadowingEvidence S) : ShadowingClosed S := by
  exact And.intro E.shadowingDistanceClosed E.shadowingHoldsClosed

end DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean
end HautevilleHouse