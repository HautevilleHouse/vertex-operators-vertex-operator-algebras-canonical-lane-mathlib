import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean

structure CorrelationPackage (V : VertexAlgebra) where
  nPointFunctions : ℕ → Type u
  conformalBlock : Prop
  differentialEquation : Prop
  genusExpansion : Prop

def CorrelationClosed (V : VertexAlgebra) (C : CorrelationPackage V) : Prop :=
  C.conformalBlock ∧ C.differentialEquation ∧ C.genusExpansion

structure CorrelationEvidence (V : VertexAlgebra) (C : CorrelationPackage V) where
  conformalBlockClosed : C.conformalBlock
  differentialEquationClosed : C.differentialEquation
  genusExpansionClosed : C.genusExpansion

theorem correlation_closed_from_evidence (V : VertexAlgebra) (C : CorrelationPackage V) (E : CorrelationEvidence V C) : CorrelationClosed V C := by
  exact And.intro E.conformalBlockClosed (And.intro E.differentialEquationClosed E.genusExpansionClosed)

end VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse
