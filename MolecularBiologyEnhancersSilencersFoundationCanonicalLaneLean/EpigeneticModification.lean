import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersFoundationLean

structure EpigeneticModificationPackage where
  dnaMethylationState : Prop
  histoneAcetylationState : Prop
  histoneMethylationState : Prop
  chromatinRemodeling : Prop
  epigeneticMemory : Prop

structure EpigeneticModificationEvidence (E : EpigeneticModificationPackage) where
  dnaMethylationStateClosed : E.dnaMethylationState
  histoneAcetylationStateClosed : E.histoneAcetylationState
  histoneMethylationStateClosed : E.histoneMethylationState
  chromatinRemodelingClosed : E.chromatinRemodeling
  epigeneticMemoryClosed : E.epigeneticMemory

def EpigeneticModificationClosed (E : EpigeneticModificationPackage) : Prop :=
  E.dnaMethylationState ∧ E.histoneAcetylationState ∧ E.histoneMethylationState ∧ E.chromatinRemodeling ∧ E.epigeneticMemory

theorem epigenetic_modification_closed_from_evidence (E : EpigeneticModificationPackage)
    (Ev : EpigeneticModificationEvidence E) : EpigeneticModificationClosed E := by
  exact And.intro Ev.dnaMethylationStateClosed
    (And.intro Ev.histoneAcetylationStateClosed
      (And.intro Ev.histoneMethylationStateClosed
        (And.intro Ev.chromatinRemodelingClosed Ev.epigeneticMemoryClosed)))

end MolecularBiologyEnhancersSilencersFoundationLean
end HautevilleHouse