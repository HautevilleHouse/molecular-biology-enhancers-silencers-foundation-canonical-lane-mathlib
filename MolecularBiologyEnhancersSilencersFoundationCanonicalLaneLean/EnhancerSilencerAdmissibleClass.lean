import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean

structure EnhancerSilencerObject where
  cellType : Type
  enhancerElements : Type
  silencerElements : Type
  transcriptionFactors : Type
  enhancerActive : Prop
  silencerActive : Prop
  geneExpressionRegulated : enhancerActive ∧ silencerActive → Prop
  conclusion : geneExpressionRegulated

structure AdmissibleClass where
  object : EnhancerSilencerObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.enhancerActive ∧ A.object.silencerActive) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean
end HautevilleHouse
