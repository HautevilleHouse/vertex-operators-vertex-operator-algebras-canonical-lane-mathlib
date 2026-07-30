import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean

/-- Conformal structure for a VOA. -/
structure ConformalStructure (V : VertexOperatorAlgebra) where
  conformalVector : V.space
  stressEnergyTensor : V.space → V.space → V.space
  centralCharge : ℚ
  conformalWeight : ℕ → ℚ
  conformalCommutator : Prop
  centralChargeProperty : Prop

structure ConformalEvidence {V : VertexOperatorAlgebra} (C : ConformalStructure V) where
  conformalCommutatorClosed : C.conformalCommutator
  centralChargePropertyClosed : C.centralChargeProperty

def ConformalClosed {V : VertexOperatorAlgebra} (C : ConformalStructure V) : Prop :=
  C.conformalCommutator ∧ C.centralChargeProperty

theorem conformal_closed_from_evidence {V : VertexOperatorAlgebra} (C : ConformalStructure V) (E : ConformalEvidence C) :
    ConformalClosed C := by
  exact And.intro E.conformalCommutatorClosed E.centralChargePropertyClosed

end VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse
