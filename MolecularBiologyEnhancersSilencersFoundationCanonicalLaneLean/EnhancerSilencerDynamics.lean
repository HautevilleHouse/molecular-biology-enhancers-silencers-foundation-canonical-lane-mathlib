import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersFoundationLean

structure EnhancerSilencerDynamicsPackage where
  recruitmentRateEnhancer : Prop
  dissociationRateSilencer : Prop
  loopFormationEnergy : Prop
  cooperativeBinding : Prop
  regulatoryFeedback : Prop

structure EnhancerSilencerDynamicsEvidence (D : EnhancerSilencerDynamicsPackage) where
  recruitmentRateEnhancerClosed : D.recruitmentRateEnhancer
  dissociationRateSilencerClosed : D.dissociationRateSilencer
  loopFormationEnergyClosed : D.loopFormationEnergy
  cooperativeBindingClosed : D.cooperativeBinding
  regulatoryFeedbackClosed : D.regulatoryFeedback

def EnhancerSilencerDynamicsClosed (D : EnhancerSilencerDynamicsPackage) : Prop :=
  D.recruitmentRateEnhancer ∧ D.dissociationRateSilencer ∧ D.loopFormationEnergy ∧ D.cooperativeBinding ∧ D.regulatoryFeedback

theorem enhancer_silencer_dynamics_closed_from_evidence (D : EnhancerSilencerDynamicsPackage)
    (E : EnhancerSilencerDynamicsEvidence D) : EnhancerSilencerDynamicsClosed D := by
  exact And.intro E.recruitmentRateEnhancerClosed
    (And.intro E.dissociationRateSilencerClosed
      (And.intro E.loopFormationEnergyClosed
        (And.intro E.cooperativeBindingClosed E.regulatoryFeedbackClosed)))

end MolecularBiologyEnhancersSilencersFoundationLean
end HautevilleHouse