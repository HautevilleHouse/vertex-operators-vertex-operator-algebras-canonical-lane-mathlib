import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean

structure VertexAlgebra where
  space : Type u
  vacuum : space
  translationOperator : space → space
  vertexOperatorMap : space → ℤ → (space → space)
  locality : Prop
  associativity : Prop
  vacuumProperty : Prop
  translationProperty : Prop

structure VertexAlgebraEvidence (V : VertexAlgebra) where
  localityClosed : V.locality
  associativityClosed : V.associativity
  vacuumPropertyClosed : V.vacuumProperty
  translationPropertyClosed : V.translationProperty

def VertexAlgebraClosed (V : VertexAlgebra) : Prop :=
  V.locality ∧ V.associativity ∧ V.vacuumProperty ∧ V.translationProperty

theorem vertex_algebra_closed_from_evidence (V : VertexAlgebra) (E : VertexAlgebraEvidence V) :
    VertexAlgebraClosed V := by
  exact And.intro E.localityClosed (And.intro E.associativityClosed (And.intro E.vacuumPropertyClosed E.translationPropertyClosed))

end VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse