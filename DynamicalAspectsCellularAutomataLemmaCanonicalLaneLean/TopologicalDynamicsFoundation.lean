import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean.CellularAutomataConfig

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean

structure TopologicalDynamicsFoundation {S : Type} (A : CellularAutomaton S) where
  phaseSpace : Type
  shiftAction : Nat -> phaseSpace -> phaseSpace
  continuousGlobalMap : Prop
  topologicalTransitivity : Prop
  mixingProperties : Prop

structure TopologicalDynamicsEvidence {S : Type} {A : CellularAutomaton S} (F : TopologicalDynamicsFoundation A) where
  continuousGlobalMapClosed : F.continuousGlobalMap
  topologicalTransitivityClosed : F.topologicalTransitivity
  mixingPropertiesClosed : F.mixingProperties

def TopologicalDynamicsClosed {S : Type} {A : CellularAutomaton S} (F : TopologicalDynamicsFoundation A) : Prop :=
  F.continuousGlobalMap ∧ F.topologicalTransitivity ∧ F.mixingProperties

theorem topological_dynamics_closed_from_evidence {S : Type} {A : CellularAutomaton S} (F : TopologicalDynamicsFoundation A) (E : TopologicalDynamicsEvidence F) :
    TopologicalDynamicsClosed F := by
  exact And.intro E.continuousGlobalMapClosed (And.intro E.topologicalTransitivityClosed E.mixingPropertiesClosed)

end DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean
end HautevilleHouse