import HautevilleHouse.MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean.BindingSiteModel

/-!
# Chromatin Looping Package
-/

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean

structure ChromatinLoopingPackage {D : DNAAccessibilityPackage}
    {T : TranscriptionFactorBindingPackage D} {E : EnhancerIdentificationPackage T}
    {S : SilencerIdentificationPackage E} {R : RegulatoryElementPackage S}
    {P : PromoterArchitecturePackage R} {M : BindingSiteModelPackage P}
    (L : LoopExtrusionPackage M) where
  cohesinLoading : Prop
  loopExtrusionProcess : Prop
  tadBoundaryFormation : Prop
  enhancerPromoterContact : Prop

structure ChromatinLoopingEvidence {D : DNAAccessibilityPackage}
    {T : TranscriptionFactorBindingPackage D} {E : EnhancerIdentificationPackage T}
    {S : SilencerIdentificationPackage E} {R : RegulatoryElementPackage S}
    {P : PromoterArchitecturePackage R} {M : BindingSiteModelPackage P}
    {L : LoopExtrusionPackage M} (C : ChromatinLoopingPackage L) where
  cohesinLoadingClosed : C.cohesinLoading
  loopExtrusionProcessClosed : C.loopExtrusionProcess
  tadBoundaryFormationClosed : C.tadBoundaryFormation
  enhancerPromoterContactClosed : C.enhancerPromoterContact

def ChromatinLoopingClosed {D : DNAAccessibilityPackage}
    {T : TranscriptionFactorBindingPackage D} {E : EnhancerIdentificationPackage T}
    {S : SilencerIdentificationPackage E} {R : RegulatoryElementPackage S}
    {P : PromoterArchitecturePackage R} {M : BindingSiteModelPackage P}
    {L : LoopExtrusionPackage M} (C : ChromatinLoopingPackage L) : Prop :=
  C.cohesinLoading ∧ C.loopExtrusionProcess ∧
  C.tadBoundaryFormation ∧ C.enhancerPromoterContact

theorem chromatin_looping_closed_from_evidence
    {D : DNAAccessibilityPackage} {T : TranscriptionFactorBindingPackage D}
    {E : EnhancerIdentificationPackage T} {S : SilencerIdentificationPackage E}
    {R : RegulatoryElementPackage S} {P : PromoterArchitecturePackage R}
    {M : BindingSiteModelPackage P} {L : LoopExtrusionPackage M}
    (C : ChromatinLoopingPackage L) (Ev : ChromatinLoopingEvidence C) :
    ChromatinLoopingClosed C := by
  exact And.intro Ev.cohesinLoadingClosed
    (And.intro Ev.loopExtrusionProcessClosed
      (And.intro Ev.tadBoundaryFormationClosed Ev.enhancerPromoterContactClosed))

end MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean
end HautevilleHouse