import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersFoundationLean

structure ChIPSeqProfile where
  histoneMarkPresence : Prop
  transcriptionFactorBinding : Prop
  enrichmentAtEnhancer : Prop
  enrichmentAtSilencer : Prop
  backgroundNormalization : Prop

structure ChIPSeqProfileEvidence (C : ChIPSeqProfile) where
  histoneMarkPresenceClosed : C.histoneMarkPresence
  transcriptionFactorBindingClosed : C.transcriptionFactorBinding
  enrichmentAtEnhancerClosed : C.enrichmentAtEnhancer
  enrichmentAtSilencerClosed : C.enrichmentAtSilencer
  backgroundNormalizationClosed : C.backgroundNormalization

def ChIPSeqProfileClosed (C : ChIPSeqProfile) : Prop :=
  C.histoneMarkPresence ∧ C.transcriptionFactorBinding ∧ C.enrichmentAtEnhancer ∧ C.enrichmentAtSilencer ∧ C.backgroundNormalization

theorem chip_seq_profile_closed_from_evidence (C : ChIPSeqProfile)
    (E : ChIPSeqProfileEvidence C) : ChIPSeqProfileClosed C := by
  exact And.intro E.histoneMarkPresenceClosed
    (And.intro E.transcriptionFactorBindingClosed
      (And.intro E.enrichmentAtEnhancerClosed
        (And.intro E.enrichmentAtSilencerClosed E.backgroundNormalizationClosed)))

end MolecularBiologyEnhancersSilencersFoundationLean
end HautevilleHouse