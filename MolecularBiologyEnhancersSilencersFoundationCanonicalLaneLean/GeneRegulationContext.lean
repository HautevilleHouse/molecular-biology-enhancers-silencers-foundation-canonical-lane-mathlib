import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean

structure EnhancerObject where
  genomicRegion : Type u
  transcriptionFactorBinding : Prop
  activationDomain : Prop
  cellTypeSpecificity : Prop

structure SilencerObject where
  genomicRegion : Type u
  repressorBinding : Prop
  repressionDomain : Prop
  contextDependence : Prop

structure GeneRegulationContext where
  enhancer : EnhancerObject
  silencer : SilencerObject
  promoter : Type v
  chromatinState : Prop
  threeDimensionalFolding : Prop
  dnaLooping : Prop
  transcriptionOutcome : Prop
  enhancerSilencerInterplay : Prop

end MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean
end HautevilleHouse