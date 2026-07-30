import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean

structure ModuleRepresentation where
  moduleSpace : Type u
  moduleAction : ℤ → (moduleSpace → moduleSpace)
  jacobiIdentity : Prop
  skipCommutator : Prop
  iterateAssociativity : Prop

structure ModuleRepresentationEvidence (M : ModuleRepresentation) where
  jacobiIdentityClosed : M.jacobiIdentity
  skipCommutatorClosed : M.skipCommutator
  iterateAssociativityClosed : M.iterateAssociativity

def ModuleRepresentationClosed (M : ModuleRepresentation) : Prop :=
  M.jacobiIdentity ∧ M.skipCommutator ∧ M.iterateAssociativity

theorem module_representation_closed_from_evidence (M : ModuleRepresentation) (E : ModuleRepresentationEvidence M) :
    ModuleRepresentationClosed M := by
  exact And.intro E.jacobiIdentityClosed (And.intro E.skipCommutatorClosed E.iterateAssociativityClosed)

end VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse