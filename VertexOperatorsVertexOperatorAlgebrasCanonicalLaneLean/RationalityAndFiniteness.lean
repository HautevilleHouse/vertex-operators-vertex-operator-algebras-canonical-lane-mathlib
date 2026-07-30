import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean

structure RationalityAndFiniteness where
  irreducibleModulesFinite : Prop
  semisimplicity : Prop
  verlinDecomposition : Prop
  irreducibleModulesFiniteTerm : irreducibleModulesFinite
  semisimplicityTerm : semisimplicity
  verlinDecompositionTerm : verlinDecomposition

structure RationalityAndFinitenessEvidence (R : RationalityAndFiniteness) where
  irreducibleModulesFiniteClosed : R.irreducibleModulesFinite
  semisimplicityClosed : R.semisimplicity
  verlinDecompositionClosed : R.verlinDecomposition

def RationalityAndFinitenessClosed (R : RationalityAndFiniteness) : Prop :=
  R.irreducibleModulesFinite ∧ R.semisimplicity ∧ R.verlinDecomposition

theorem rationality_and_finiteness_closed_from_evidence
    (R : RationalityAndFiniteness) (E : RationalityAndFinitenessEvidence R) :
    RationalityAndFinitenessClosed R := by
  exact And.intro E.irreducibleModulesFiniteClosed
    (And.intro E.semisimplicityClosed E.verlinDecompositionClosed)

end VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse