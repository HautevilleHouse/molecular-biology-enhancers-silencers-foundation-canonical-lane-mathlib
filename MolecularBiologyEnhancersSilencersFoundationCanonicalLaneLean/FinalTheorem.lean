import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean.BridgeLemmas
import MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean

def ConstrainedEnhancerSilencerClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_enhancer_silencer_endgame (A : AdmissibleClass) :
    ConstrainedEnhancerSilencerClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean
end HautevilleHouse
