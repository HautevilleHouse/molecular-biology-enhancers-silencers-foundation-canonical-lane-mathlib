import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean

structure ExpressionQuantificationPackage where
  rnaSeqData : Type u
  expressionLevels : rnaSeqData -> Prop
  differentialExpression : Prop
  enhancerExpressionCorrelation : Prop
  silencerExpressionCorrelation : Prop
  singleCellResolution : Prop
  temporalDynamics : Prop

structure ExpressionQuantificationEvidence (Q : ExpressionQuantificationPackage) where
  expressionLevelsClosed : Q.expressionLevels
  differentialExpressionClosed : Q.differentialExpression
  enhancerExpressionCorrelationClosed : Q.enhancerExpressionCorrelation
  silencerExpressionCorrelationClosed : Q.silencerExpressionCorrelation

def ExpressionQuantificationClosed (Q : ExpressionQuantificationPackage) : Prop :=
  Q.expressionLevels ∧ Q.differentialExpression ∧ Q.enhancerExpressionCorrelation ∧ Q.silencerExpressionCorrelation

theorem expression_quantification_closed_from_evidence
    (Q : ExpressionQuantificationPackage) (E : ExpressionQuantificationEvidence Q) :
    ExpressionQuantificationClosed Q := by
  exact And.intro E.expressionLevelsClosed
    (And.intro E.differentialExpressionClosed
      (And.intro E.enhancerExpressionCorrelationClosed E.silencerExpressionCorrelationClosed))

end MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean
end HautevilleHouse