import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean

def gateClosed (A : MolecularBiologyAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : MolecularBiologyAdmissibleClass) : gateClosed A :=
  by exact A.gateWitness

end MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean
end HautevilleHouse