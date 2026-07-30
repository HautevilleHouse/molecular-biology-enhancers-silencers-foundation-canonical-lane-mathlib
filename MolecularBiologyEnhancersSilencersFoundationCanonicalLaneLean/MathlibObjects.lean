import HautevilleHouse.MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure EnhancerSilencerSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EnhancerSilencerAdmittedObject where
  space : EnhancerSilencerSpace
  dnaAccessible : Prop
  regulatoryElementBound : Prop
  expressionState : Prop
  expressionModel : Type
  expressionTopology : TopologicalSpace expressionModel
  regulatoryEffect : Prop
  conclusion : regulatoryEffect

def EnhancerSilencerWitnessClosed (O : EnhancerSilencerAdmittedObject) : Prop :=
  O.regulatoryEffect

end MolecularBiologyEnhancersSilencersFoundationCanonicalLaneLean
end HautevilleHouse