import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean

structure VertexAlgebraSpace where
  carrier : Type
  vacuum : carrier
  translationOperator : carrier → carrier
  vertexOperatorMap : carrier → ℤ → carrier → carrier
  locality : Prop
  associativity : Prop
  commutativity : Prop
  
structure VertexAlgebraAdmittedObject where
  space : VertexAlgebraSpace
  vertexAlgebraAxioms : Prop
  conclusion : vertexAlgebraAxioms

structure VertexAlgebraEndgameState where
  object : VertexAlgebraAdmittedObject

def VertexAlgebraWitnessClosed (O : VertexAlgebraAdmittedObject) : Prop :=
  O.vertexAlgebraAxioms

end VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse