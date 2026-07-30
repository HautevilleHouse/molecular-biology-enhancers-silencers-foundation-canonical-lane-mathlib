import HautevilleHouse.MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def enhancerSilencerProjection : Projection EnhancerSilencerEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem enhancer_silencer_projection_idempotent (x : EnhancerSilencerEndgameState) :
    enhancerSilencerProjection.toFun (enhancerSilencerProjection.toFun x) = enhancerSilencerProjection.toFun x := by
  exact enhancerSilencerProjection.idempotent x

end MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean
end HautevilleHouse