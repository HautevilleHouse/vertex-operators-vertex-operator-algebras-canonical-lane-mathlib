import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean

structure RepresentationPackage (V : VertexAlgebra) where
  moduleCategory : Type u
  simpleObjects : Prop
  fusionRules : Prop
  modularTensorCategory : Prop

def RepresentationClosed (V : VertexAlgebra) (R : RepresentationPackage V) : Prop :=
  R.simpleObjects ∧ R.fusionRules ∧ R.modularTensorCategory

structure RepresentationEvidence (V : VertexAlgebra) (R : RepresentationPackage V) where
  simpleObjectsClosed : R.simpleObjects
  fusionRulesClosed : R.fusionRules
  modularTensorCategoryClosed : R.modularTensorCategory

theorem representation_closed_from_evidence (V : VertexAlgebra) (R : RepresentationPackage V) (E : RepresentationEvidence V R) : RepresentationClosed V R := by
  exact And.intro E.simpleObjectsClosed (And.intro E.fusionRulesClosed E.modularTensorCategoryClosed)

end VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse
