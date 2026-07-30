import HautevilleHouse.MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean.EnhancerSilencerFoundation

/-!
# Binding Site Model Package
-/

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean

structure BindingSiteModelPackage {D : DNAAccessibilityPackage}
    {T : TranscriptionFactorBindingPackage D} {E : EnhancerIdentificationPackage T}
    {S : SilencerIdentificationPackage E} {R : RegulatoryElementPackage S}
    (P : PromoterArchitecturePackage R) where
  sequenceMotif : Prop
  chromatinAccessibility : Prop
  cooperativeBinding : Prop
  competitiveBinding : Prop
  distanceConstraint : Prop

structure BindingSiteModelEvidence {D : DNAAccessibilityPackage}
    {T : TranscriptionFactorBindingPackage D} {E : EnhancerIdentificationPackage T}
    {S : SilencerIdentificationPackage E} {R : RegulatoryElementPackage S}
    {P : PromoterArchitecturePackage R} (M : BindingSiteModelPackage P) where
  sequenceMotifClosed : M.sequenceMotif
  chromatinAccessibilityClosed : M.chromatinAccessibility
  cooperativeBindingClosed : M.cooperativeBinding
  competitiveBindingClosed : M.competitiveBinding
  distanceConstraintClosed : M.distanceConstraint

def BindingSiteModelClosed {D : DNAAccessibilityPackage}
    {T : TranscriptionFactorBindingPackage D} {E : EnhancerIdentificationPackage T}
    {S : SilencerIdentificationPackage E} {R : RegulatoryElementPackage S}
    {P : PromoterArchitecturePackage R} (M : BindingSiteModelPackage P) : Prop :=
  M.sequenceMotif ∧ M.chromatinAccessibility ∧
  M.cooperativeBinding ∧ M.competitiveBinding ∧ M.distanceConstraint

theorem binding_site_model_closed_from_evidence
    {D : DNAAccessibilityPackage} {T : TranscriptionFactorBindingPackage D}
    {E : EnhancerIdentificationPackage T} {S : SilencerIdentificationPackage E}
    {R : RegulatoryElementPackage S} {P : PromoterArchitecturePackage R}
    (M : BindingSiteModelPackage P) (Ev : BindingSiteModelEvidence M) :
    BindingSiteModelClosed M := by
  exact And.intro Ev.sequenceMotifClosed
    (And.intro Ev.chromatinAccessibilityClosed
      (And.intro Ev.cooperativeBindingClosed
        (And.intro Ev.competitiveBindingClosed Ev.distanceConstraintClosed)))

end MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean
end HautevilleHouse