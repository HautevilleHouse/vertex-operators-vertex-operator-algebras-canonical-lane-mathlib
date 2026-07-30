import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean

structure VertexOperatorModule where
  space : Type u
  vertexMap : ℤ → space → (space → space)
  moduleStructure : Prop
  compatibility : Prop
  locality : Prop
  associativity : Prop

def VertexOperatorModuleClosed (M : VertexOperatorModule) : Prop :=
  M.moduleStructure ∧ M.compatibility ∧ M.locality ∧ M.associativity

structure VertexOperatorModuleEvidence (M : VertexOperatorModule) where
  moduleStructureClosed : M.moduleStructure
  compatibilityClosed : M.compatibility
  localityClosed : M.locality
  associativityClosed : M.associativity

theorem vertex_operator_module_closed_from_evidence (M : VertexOperatorModule) (E : VertexOperatorModuleEvidence M) : VertexOperatorModuleClosed M := by
  exact And.intro E.moduleStructureClosed (And.intro E.compatibilityClosed (And.intro E.localityClosed E.associativityClosed))

end VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse
