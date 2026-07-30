import HautevilleHouse.VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean.VertexAlgebraPackage

namespace HautevilleHouse
namespace VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean

structure LatticeVertexAlgebraPackage where
  lattice : Type u
  bilinearForm : lattice → lattice → ℤ
  latticeVertexAlgebra : VertexAlgebraPackage
  cocycleData : Prop
  vertexOperatorConstruction : Prop
  cocycleDataClosed : cocycleData
  vertexOperatorConstructionClosed : vertexOperatorConstruction
  latticeEvidence : VertexAlgebraEvidence latticeVertexAlgebra

def LatticeVertexAlgebraClosed (L : LatticeVertexAlgebraPackage) : Prop :=
  L.cocycleData ∧ L.vertexOperatorConstruction ∧ VertexAlgebraClosed L.latticeVertexAlgebra

theorem lattice_vertex_algebra_closed (L : LatticeVertexAlgebraPackage)
    (E : VertexAlgebraEvidence L.latticeVertexAlgebra) : LatticeVertexAlgebraClosed L := by
  have hV : VertexAlgebraClosed L.latticeVertexAlgebra :=
    vertex_algebra_closed_from_evidence L.latticeVertexAlgebra L.latticeEvidence
  exact And.intro L.cocycleDataClosed (And.intro L.vertexOperatorConstructionClosed hV)

end HautevilleHouse.VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean