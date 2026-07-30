import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean

structure VertexAlgebra where
  space : Type u
  vacuum : space
  stateFieldMap : ℤ → space → (space → space)
  locality : Prop
  associativity : Prop
  vacuumProperty : Prop

def VertexAlgebraClosed (V : VertexAlgebra) : Prop :=
  V.locality ∧ V.associativity ∧ V.vacuumProperty

structure VertexAlgebraEvidence (V : VertexAlgebra) where
  localityClosed : V.locality
  associativityClosed : V.associativity
  vacuumPropertyClosed : V.vacuumProperty

theorem vertex_algebra_closed_from_evidence (V : VertexAlgebra) (E : VertexAlgebraEvidence V) : VertexAlgebraClosed V := by
  exact And.intro E.localityClosed (And.intro E.associativityClosed E.vacuumPropertyClosed)

end VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse
