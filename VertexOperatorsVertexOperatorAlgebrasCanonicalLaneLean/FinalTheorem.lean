import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean

def ConstrainedVOAClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_voa_endgame (A : AdmissibleClass) :
    ConstrainedVOAClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse