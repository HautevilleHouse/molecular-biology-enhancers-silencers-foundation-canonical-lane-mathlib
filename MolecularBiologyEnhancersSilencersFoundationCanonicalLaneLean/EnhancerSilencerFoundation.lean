import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersFoundationLean

structure EnhancerSilencerFoundationPackage where
  enhancerSilencerCircuit : EnhancerSilencerRegulatoryCircuit
  chipSeqProfile : ChIPSeqProfile
  dynamics : EnhancerSilencerDynamicsPackage
  epigenetics : EpigeneticModificationPackage
  regulation : TranscriptionalRegulationPackage

structure EnhancerSilencerFoundationEvidence (F : EnhancerSilencerFoundationPackage) where
  circuitClosed : EnhancerSilencerRegulatoryCircuitClosed F.enhancerSilencerCircuit
  chipSeqClosed : ChIPSeqProfileClosed F.chipSeqProfile
  dynamicsClosed : EnhancerSilencerDynamicsClosed F.dynamics
  epigeneticsClosed : EpigeneticModificationClosed F.epigenetics
  regulationClosed : TranscriptionalRegulationClosed F.regulation

def EnhancerSilencerFoundationClosed (F : EnhancerSilencerFoundationPackage) : Prop :=
  EnhancerSilencerRegulatoryCircuitClosed F.enhancerSilencerCircuit ∧
  ChIPSeqProfileClosed F.chipSeqProfile ∧
  EnhancerSilencerDynamicsClosed F.dynamics ∧
  EpigeneticModificationClosed F.epigenetics ∧
  TranscriptionalRegulationClosed F.regulation

theorem enhancer_silencer_foundation_closed_from_evidence (F : EnhancerSilencerFoundationPackage)
    (E : EnhancerSilencerFoundationEvidence F) : EnhancerSilencerFoundationClosed F := by
  exact And.intro E.circuitClosed
    (And.intro E.chipSeqClosed
      (And.intro E.dynamicsClosed
        (And.intro E.epigeneticsClosed E.regulationClosed)))

end MolecularBiologyEnhancersSilencersFoundationLean
end HautevilleHouse