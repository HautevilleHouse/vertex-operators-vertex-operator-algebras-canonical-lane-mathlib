import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean

structure ClassificationPackage (V : VertexAlgebra) where
  centralCharge : ℚ
  rationality : Prop
  finiteness : Prop
  genusZeroCondition : Prop

def ClassificationClosed (V : VertexAlgebra) (C : ClassificationPackage V) : Prop :=
  C.rationality ∧ C.finiteness ∧ C.genusZeroCondition

structure ClassificationEvidence (V : VertexAlgebra) (C : ClassificationPackage V) where
  rationalityClosed : C.rationality
  finitenessClosed : C.finiteness
  genusZeroConditionClosed : C.genusZeroCondition

theorem classification_closed_from_evidence (V : VertexAlgebra) (C : ClassificationPackage V) (E : ClassificationEvidence V C) : ClassificationClosed V C := by
  exact And.intro E.rationalityClosed (And.intro E.finitenessClosed E.genusZeroConditionClosed)

end VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse
