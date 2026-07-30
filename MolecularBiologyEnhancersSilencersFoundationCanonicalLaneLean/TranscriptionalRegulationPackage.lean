import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean

structure TranscriptionalRegulationPackage where
  chromatinState : Prop
  transcriptionFactorBinding : Prop
  enhancerPromoterLooping : Prop
  histoneModifications : Prop
  chromatinStateClosed : chromatinState
  transcriptionFactorBindingClosed : transcriptionFactorBinding
  enhancerPromoterLoopingClosed : enhancerPromoterLooping
  histoneModificationsClosed : histoneModifications

structure TranscriptionalRegulationEvidence (T : TranscriptionalRegulationPackage) where
  chromatinStateClosed : T.chromatinState
  transcriptionFactorBindingClosed : T.transcriptionFactorBinding
  enhancerPromoterLoopingClosed : T.enhancerPromoterLooping
  histoneModificationsClosed : T.histoneModifications

def TranscriptionalRegulationClosed (T : TranscriptionalRegulationPackage) : Prop :=
  T.chromatinState ∧ T.transcriptionFactorBinding ∧ T.enhancerPromoterLooping ∧ T.histoneModifications

theorem transcriptional_regulation_closed_from_evidence
    (T : TranscriptionalRegulationPackage) (E : TranscriptionalRegulationEvidence T) :
    TranscriptionalRegulationClosed T := by
  exact And.intro E.chromatinStateClosed
    (And.intro E.transcriptionFactorBindingClosed
      (And.intro E.enhancerPromoterLoopingClosed E.histoneModificationsClosed))

end MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean
end HautevilleHouse
