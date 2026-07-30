import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean

structure EnhancerBindingSite where
  sequence : String
  cellType : String
  bindingAffinity : Float
  transcriptionFactor : String
  enhancerActivity : Prop
  activityWitness : enhancerActivity

structure EnhancerBindingEvidence (E : EnhancerBindingSite) where
  sequenceValid : E.sequence.length > 0
  cellTypeValid : E.cellType ≠ ""
  affinityPositive : E.bindingAffinity > 0.0
  factorValid : E.transcriptionFactor ≠ ""

structure EnhancerBindingClosed (E : EnhancerBindingSite) : Prop :=
  E.enhancerActivity

theorem enhancer_binding_closed_from_evidence (E : EnhancerBindingSite) (ev : EnhancerBindingEvidence E) : EnhancerBindingClosed E :=
  by exact ev.affinityPositive

end MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean
end HautevilleHouse