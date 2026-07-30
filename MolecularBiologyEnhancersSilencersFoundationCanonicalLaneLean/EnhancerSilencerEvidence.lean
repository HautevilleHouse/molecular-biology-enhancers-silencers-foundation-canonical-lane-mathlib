import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean.TranscriptionalRegulationPackage

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean

structure EnhancerSilencerEvidence {T : TranscriptionalRegulationPackage} where
  enhancerActivationAssay : Prop
  silencerRepressionAssay : Prop
  chromatinImmunoprecipitation : Prop
  reporterGeneExpression : Prop
  enhancerActivationAssayClosed : enhancerActivationAssay
  silencerRepressionAssayClosed : silencerRepressionAssay
  chromatinImmunoprecipitationClosed : chromatinImmunoprecipitation
  reporterGeneExpressionClosed : reporterGeneExpression

def EnhancerSilencerEvidenceClosed {T : TranscriptionalRegulationPackage}
    (E : EnhancerSilencerEvidence T) : Prop :=
  E.enhancerActivationAssay ∧ E.silencerRepressionAssay ∧
  E.chromatinImmunoprecipitation ∧ E.reporterGeneExpression

theorem enhancer_silencer_evidence_closed
    {T : TranscriptionalRegulationPackage} (E : EnhancerSilencerEvidence T) :
    EnhancerSilencerEvidenceClosed E := by
  exact And.intro E.enhancerActivationAssayClosed
    (And.intro E.silencerRepressionAssayClosed
      (And.intro E.chromatinImmunoprecipitationClosed E.reporterGeneExpressionClosed))

end MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean
end HautevilleHouse
