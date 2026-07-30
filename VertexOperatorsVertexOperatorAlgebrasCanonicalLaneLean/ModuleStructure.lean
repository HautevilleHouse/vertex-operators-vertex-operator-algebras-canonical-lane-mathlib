import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean

/-- A module over a VOA. -/
structure VOAModule (V : VertexOperatorAlgebra) where
  space : Type u
  action : V.space → space → space
  identityAction : Prop
  JacobiIdentity : Prop

structure ModuleEvidence {V : VertexOperatorAlgebra} (M : VOAModule V) where
  identityActionClosed : M.identityAction
  jacobiIdentityClosed : M.JacobiIdentity

def ModuleClosed {V : VertexOperatorAlgebra} (M : VOAModule V) : Prop :=
  M.identityAction ∧ M.JacobiIdentity

theorem module_closed_from_evidence {V : VertexOperatorAlgebra} (M : VOAModule V) (E : ModuleEvidence M) :
    ModuleClosed M := by
  exact And.intro E.identityActionClosed E.jacobiIdentityClosed

end VertexOperatorsVertexOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse
