import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean

def bridgeClosed (A : MolecularBiologyAdmissibleClass) : Prop :=
  A.object.allValid

theorem bridge_from_admissible_class (A : MolecularBiologyAdmissibleClass) : bridgeClosed A :=
  by exact A.object.allValid

end MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean
end HautevilleHouse