import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean

/-- A vertex operator algebra (VOA) structure. -/
structure VertexOperatorAlgebra where
  space : Type u
  vacuum : space
  translationOperator : space → space
  vertexOperator : space → space → space
  locality : Prop
  associativity : Prop
  commutativity : Prop
  vacuumProperty : Prop
  translationProperty : Prop

structure VOAEvidence (V : VertexOperatorAlgebra) where
  localityClosed : V.locality
  associativityClosed : V.associativity
  commutativityClosed : V.commutativity
  vacuumPropertyClosed : V.vacuumProperty
  translationPropertyClosed : V.translationProperty

def VOAClosed (V : VertexOperatorAlgebra) : Prop :=
  V.locality ∧ V.associativity ∧ V.commutativity ∧ V.vacuum ∧ V.translationProperty

theorem voa_closed_from_evidence (V : VertexOperatorAlgebra) (E : VOAEvidence V) :
    VOAClosed V := by
  exact And.intro E.localityClosed
    (And.intro E.associativityClosed
      (And.intro E.commutativityClosed
        (And.intro E.vacuumPropertyClosed E.translationPropertyClosed)))

end VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse
