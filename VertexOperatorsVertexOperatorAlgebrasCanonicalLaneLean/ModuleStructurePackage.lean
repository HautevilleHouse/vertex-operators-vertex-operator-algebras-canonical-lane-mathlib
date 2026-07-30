import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean

structure ModuleStructurePackage (V : VertexAlgebraSpace) where
  moduleAction : ℤ → V.carrier → V.carrier
  moduleAxioms : Prop
  
structure ModuleStructureEvidence {V : VertexAlgebraSpace} (M : ModuleStructurePackage V) where
  moduleAxiomsClosed : M.moduleAxioms

def ModuleStructureClosed {V : VertexAlgebraSpace} (M : ModuleStructurePackage V) : Prop :=
  M.moduleAxioms

theorem module_structure_closed_from_evidence {V : VertexAlgebraSpace}
    (M : ModuleStructurePackage V) (E : ModuleStructureEvidence M) : 
    ModuleStructureClosed M := by
  exact E.moduleAxiomsClosed

end VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse