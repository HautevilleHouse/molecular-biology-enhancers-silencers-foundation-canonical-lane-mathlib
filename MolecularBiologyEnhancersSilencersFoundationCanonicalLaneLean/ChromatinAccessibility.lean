import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean

structure ChromatinAccessibilityState where
  region : String
  openChromatin : Prop
  dnaseHypersensitivity : Prop
  transcriptionFactorAccess : Prop
  opennessWitness : openChromatin

structure ChromatinAccessibilityEvidence (C : ChromatinAccessibilityState) where
  regionNonempty : C.region ≠ ""
  dnasePositive : C.dnaseHypersensitivity
  factorAccessible : C.transcriptionFactorAccess

structure ChromatinAccessibilityClosed (C : ChromatinAccessibilityState) : Prop :=
  C.openChromatin

theorem chromatin_accessibility_closed (C : ChromatinAccessibilityState) (ev : ChromatinAccessibilityEvidence C) : ChromatinAccessibilityClosed C :=
  by exact ev.factorAccessible

end MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean
end HautevilleHouse