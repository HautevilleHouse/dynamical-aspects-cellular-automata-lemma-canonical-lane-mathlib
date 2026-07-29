import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean

structure CellularAutomatonStateSpace where
  stateSet : Type u
  lattice : Type v
  latticeOrder : lattice → lattice → Prop
  shiftOperator : ℕ → stateSet → stateSet
  shiftContinuity : Prop
  shiftContinuityTerm : shiftContinuity

end DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean
end HautevilleHouse