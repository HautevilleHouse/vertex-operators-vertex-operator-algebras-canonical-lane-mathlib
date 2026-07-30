import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean

structure VertexOperatorConstruction where
  lattice : ℤᵐ  -- Placeholder
  cocycle : Prop
  vertexOperatorMap : ℤ → (ℤ → ℤ)  -- Placeholder
  localityDefined : Prop
  skewSymmetry : Prop
  commutatorFormula : Prop

structure VertexOperatorConstructionEvidence (C : VertexOperatorConstruction) where
  localityDefinedClosed : C.localityDefined
  skewSymmetryClosed : C.skewSymmetry
  commutatorFormulaClosed : C.commutatorFormula

def VertexOperatorConstructionClosed (C : VertexOperatorConstruction) : Prop :=
  C.localityDefined ∧ C.skewSymmetry ∧ C.commutatorFormula

theorem vertex_operator_construction_closed_from_evidence (C : VertexOperatorConstruction) (E : VertexOperatorConstructionEvidence C) :
    VertexOperatorConstructionClosed C := by
  exact And.intro E.localityDefinedClosed (And.intro E.skewSymmetryClosed E.commutatorFormulaClosed)

end VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse