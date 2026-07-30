import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean

structure ModuleOverVOA where
  moduleSpace : Type u
  moduleAction : VertexOperatorAlgebra → moduleSpace → moduleSpace
  moduleStructure : Prop
  moduleStructureTerm : moduleStructure

structure ModuleEvidence (M : ModuleOverVOA) where
  moduleStructureClosed : M.moduleStructure

def ModuleClosed (M : ModuleOverVOA) : Prop :=
  M.moduleStructure

theorem module_closed_from_evidence
    (M : ModuleOverVOA) (E : ModuleEvidence M) :
    ModuleClosed M := by
  exact E.moduleStructureClosed

end VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse