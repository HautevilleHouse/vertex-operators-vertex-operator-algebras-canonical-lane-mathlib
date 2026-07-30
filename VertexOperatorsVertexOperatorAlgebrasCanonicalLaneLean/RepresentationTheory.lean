import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean

/-- Representation of a VOA. -/
structure Representation (V : VertexOperatorAlgebra) where
  module : VOAModule V
  intertwiner : V.space → module.space → module.space
  compatibility : Prop

structure RepresentationEvidence {V : VertexOperatorAlgebra} (R : Representation V) where
  compatibilityClosed : R.compatibility

def RepresentationClosed {V : VertexOperatorAlgebra} (R : Representation V) : Prop :=
  R.compatibility

theorem representation_closed_from_evidence {V : VertexOperatorAlgebra} (R : Representation V) (E : RepresentationEvidence R) :
    RepresentationClosed R := by
  exact E.compatibilityClosed

end VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse
