import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean

structure CellularAdmittedObject where
  space : Type u
  shiftMap : space → space
  invariantSet : Set space
  closedOrbitCondition : Prop
  conclusion : closedOrbitCondition

structure AdmissibleClass where
  object : CellularAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CellularWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def CellularWitnessClosed (O : CellularAdmittedObject) : Prop :=
  O.closedOrbitCondition

end DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean
end HautevilleHouse