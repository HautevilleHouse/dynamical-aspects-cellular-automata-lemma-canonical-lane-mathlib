import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean

structure InvariantMeasurePackage where
  measureSpace : Type u
  invariantMeasure : Type v
  shiftInvariance : Prop
  ergodicity : Prop
  mixingProperties : Prop
  shiftInvarianceTerm : shiftInvariance
  ergodicityTerm : ergodicity
  mixingPropertiesTerm : mixingProperties

def InvariantMeasureClosed (I : InvariantMeasurePackage) : Prop :=
  I.shiftInvariance ∧ I.ergodicity ∧ I.mixingProperties

end DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean
end HautevilleHouse