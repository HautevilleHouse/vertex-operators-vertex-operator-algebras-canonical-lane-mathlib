import HautevilleHouse.VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean.VertexAlgebraPackage

namespace HautevilleHouse
namespace VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean

structure AdmissibleClass where
  vertexAlgebra : VertexAlgebraPackage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  VertexAlgebraClosed A.vertexAlgebra ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HautevilleHouse.VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean