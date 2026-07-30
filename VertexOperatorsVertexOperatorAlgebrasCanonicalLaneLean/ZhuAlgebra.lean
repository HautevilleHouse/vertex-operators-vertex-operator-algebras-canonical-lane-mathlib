import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean

structure ZhuAlgebra where
  algebra : Type u
  multiplication : algebra → algebra → algebra
  unit : algebra
  associativity : Prop
  commutativity : Prop
  vertexAlgebraCompatibility : Prop

structure ZhuAlgebraEvidence (Z : ZhuAlgebra) where
  associativityClosed : Z.associativity
  commutativityClosed : Z.commutativity
  vertexAlgebraCompatibilityClosed : Z.vertexAlgebraCompatibility

def ZhuAlgebraClosed (Z : ZhuAlgebra) : Prop :=
  Z.associativity ∧ Z.commutativity ∧ Z.vertexAlgebraCompatibility

theorem zhu_algebra_closed_from_evidence (Z : ZhuAlgebra) (E : ZhuAlgebraEvidence Z) :
    ZhuAlgebraClosed Z := by
  exact And.intro E.associativityClosed (And.intro E.commutativityClosed E.vertexAlgebraCompatibilityClosed)

end VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse