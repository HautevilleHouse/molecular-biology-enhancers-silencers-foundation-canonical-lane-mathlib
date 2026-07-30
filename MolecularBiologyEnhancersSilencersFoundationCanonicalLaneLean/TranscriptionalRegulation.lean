import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersFoundationLean

structure TranscriptionalRegulationPackage where
  rnaPolymeraseRecruitment : Prop
  transcriptionInitiationRate : Prop
  elongationEfficiency : Prop
  terminationSignal : Prop
  mrnaStability : Prop

structure TranscriptionalRegulationEvidence (T : TranscriptionalRegulationPackage) where
  rnaPolymeraseRecruitmentClosed : T.rnaPolymeraseRecruitment
  transcriptionInitiationRateClosed : T.transcriptionInitiationRate
  elongationEfficiencyClosed : T.elongationEfficiency
  terminationSignalClosed : T.terminationSignal
  mrnaStabilityClosed : T.mrnaStability

def TranscriptionalRegulationClosed (T : TranscriptionalRegulationPackage) : Prop :=
  T.rnaPolymeraseRecruitment ∧ T.transcriptionInitiationRate ∧ T.elongationEfficiency ∧ T.terminationSignal ∧ T.mrnaStability

theorem transcriptional_regulation_closed_from_evidence (T : TranscriptionalRegulationPackage)
    (E : TranscriptionalRegulationEvidence T) : TranscriptionalRegulationClosed T := by
  exact And.intro E.rnaPolymeraseRecruitmentClosed
    (And.intro E.transcriptionInitiationRateClosed
      (And.intro E.elongationEfficiencyClosed
        (And.intro E.terminationSignalClosed E.mrnaStabilityClosed)))

end MolecularBiologyEnhancersSilencersFoundationLean
end HautevilleHouse