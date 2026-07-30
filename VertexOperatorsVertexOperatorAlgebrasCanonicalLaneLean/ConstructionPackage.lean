import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean

structure LatticeConstruction where
  lattice : Type u
  vertexAlgebra : VertexAlgebra
  latticeData : Prop
  construction : Prop
  identification : Prop

def LatticeConstructionClosed (L : LatticeConstruction) : Prop :=
  L.latticeData ∧ L.construction ∧ L.identification

structure LatticeConstructionEvidence (L : LatticeConstruction) where
  latticeDataClosed : L.latticeData
  constructionClosed : L.construction
  identificationClosed : L.identification

theorem lattice_construction_closed_from_evidence (L : LatticeConstruction) (E : LatticeConstructionEvidence L) : LatticeConstructionClosed L := by
  exact And.intro E.latticeDataClosed (And.intro E.constructionClosed E.identificationClosed)

end VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse
