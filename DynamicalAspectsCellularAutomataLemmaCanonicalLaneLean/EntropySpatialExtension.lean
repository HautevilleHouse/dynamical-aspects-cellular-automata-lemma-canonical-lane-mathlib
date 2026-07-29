import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean.InvariantMeasurePackage

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean

structure EntropySpatialExtension (I : InvariantMeasurePackage) where
  topologicalEntropy : ℝ
  measureTheoreticEntropy : ℝ
  variationPrinciple : Prop
  entropyDensity : Prop
  variationPrincipleTerm : variationPrinciple
  entropyDensityTerm : entropyDensity

def EntropySpatialExtensionClosed {I : InvariantMeasurePackage} (E : EntropySpatialExtension I) : Prop :=
  E.variationPrinciple ∧ E.entropyDensity

end DynamicalAspectsCellularAutomataLemmaCanonicalLaneLean
end HautevilleHouse