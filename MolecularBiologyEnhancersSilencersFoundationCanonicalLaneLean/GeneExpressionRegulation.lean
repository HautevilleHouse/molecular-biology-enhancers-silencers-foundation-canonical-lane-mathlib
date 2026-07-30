import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean

structure GeneExpressionRegulationPackage where
  enhancerPromoterLooping : Prop
  silencerPromoterLooping : Prop
  mediatorComplex : Prop
  rnaPolymeraseIiLoading : Prop
  transcriptionalBursting : Prop
  mrnaSynthesisRates : Prop
  regulatoryInputIntegration : Prop

structure GeneExpressionRegulationEvidence (G : GeneExpressionRegulationPackage) where
  enhancerPromoterLoopingClosed : G.enhancerPromoterLooping
  silencerPromoterLoopingClosed : G.silencerPromoterLooping
  mediatorComplexClosed : G.mediatorComplex
  rnaPolymeraseIiLoadingClosed : G.rnaPolymeraseIiLoading
  transcriptionalBurstingClosed : G.transcriptionalBursting
  mrnaSynthesisRatesClosed : G.mrnaSynthesisRates
  regulatoryInputIntegrationClosed : G.regulatoryInputIntegration

def GeneExpressionRegulationClosed (G : GeneExpressionRegulationPackage) : Prop :=
  G.enhancerPromoterLooping ∧ G.silencerPromoterLooping ∧ G.mediatorComplex ∧
  G.rnaPolymeraseIiLoading ∧ G.transcriptionalBursting ∧ G.mrnaSynthesisRates ∧
  G.regulatoryInputIntegration

theorem gene_expression_regulation_closed_from_evidence
    (G : GeneExpressionRegulationPackage)
    (E : GeneExpressionRegulationEvidence G) : GeneExpressionRegulationClosed G := by
  exact And.intro E.enhancerPromoterLoopingClosed
    (And.intro E.silencerPromoterLoopingClosed
      (And.intro E.mediatorComplexClosed
        (And.intro E.rnaPolymeraseIiLoadingClosed
          (And.intro E.transcriptionalBurstingClosed
            (And.intro E.mrnaSynthesisRatesClosed
              E.regulatoryInputIntegrationClosed)))))

end MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean
end HautevilleHouse