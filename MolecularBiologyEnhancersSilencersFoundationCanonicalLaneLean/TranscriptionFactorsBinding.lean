import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean

structure TranscriptionFactorBindingPackage where
  tfDnaBindingMotif : Prop
  cooperativeBinding : Prop
  competitiveBinding : Prop
  bindingAffinity : Prop
  allostericRegulation : Prop
  recruitmentOfCoactivators : Prop

structure TranscriptionFactorBindingEvidence (T : TranscriptionFactorBindingPackage) where
  tfDnaBindingMotifClosed : T.tfDnaBindingMotif
  cooperativeBindingClosed : T.cooperativeBinding
  competitiveBindingClosed : T.competitiveBinding
  bindingAffinityClosed : T.bindingAffinity
  allostericRegulationClosed : T.allostericRegulation
  recruitmentOfCoactivatorsClosed : T.recruitmentOfCoactivators

def TranscriptionFactorBindingClosed (T : TranscriptionFactorBindingPackage) : Prop :=
  T.tfDnaBindingMotif ∧ T.cooperativeBinding ∧ T.competitiveBinding ∧
  T.bindingAffinity ∧ T.allostericRegulation ∧ T.recruitmentOfCoactivators

theorem transcription_factor_binding_closed_from_evidence
    (T : TranscriptionFactorBindingPackage)
    (E : TranscriptionFactorBindingEvidence T) : TranscriptionFactorBindingClosed T := by
  exact And.intro E.tfDnaBindingMotifClosed
    (And.intro E.cooperativeBindingClosed
      (And.intro E.competitiveBindingClosed
        (And.intro E.bindingAffinityClosed
          (And.intro E.allostericRegulationClosed
            E.recruitmentOfCoactivatorsClosed))))

end MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean
end HautevilleHouse