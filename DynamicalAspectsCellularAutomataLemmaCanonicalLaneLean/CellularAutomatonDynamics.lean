import DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean

structure CellularAutomatonPackage where
  configSpace : Type u
  localRule : configSpace → configSpace
  shiftCommutation : Prop
  uniformContinuity : Prop

def CellularAutomatonClosed (C : CellularAutomatonPackage) : Prop :=
  C.shiftCommutation ∧ C.uniformContinuity

end DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean
end HautevilleHouse