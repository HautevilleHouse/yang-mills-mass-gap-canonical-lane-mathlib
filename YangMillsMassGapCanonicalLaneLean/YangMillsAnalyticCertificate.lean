import YangMillsMassGapCanonicalLaneLean.CompactnessReconstructionLayer

/-!
# Yang-Mills Analytic Certificate

This module packages the local gauge and mass-gap layer into one proof-carrying
certificate. The certificate is native Lean data with evidence terms for every
field in the admitted lane.
-/

namespace HautevilleHouse
namespace YangMillsMassGapCanonicalLaneLean

structure YangMillsAnalyticCertificate where
  substrate : GaugeTheorySubstrate
  gaugeFieldClosed : Prop
  actionLayerClosed : Prop
  constructiveLayerClosed : Prop
  massGapLayerClosed : Prop
  reconstructionLayerClosed : Prop
  canonicalCarriageImported : Prop
  gaugeFieldClosedProof : gaugeFieldClosed
  actionLayerClosedProof : actionLayerClosed
  constructiveLayerClosedProof : constructiveLayerClosed
  massGapLayerClosedProof : massGapLayerClosed
  reconstructionLayerClosedProof : reconstructionLayerClosed
  canonicalCarriageImportedProof : canonicalCarriageImported

def sourceYangMillsAnalyticCertificate : YangMillsAnalyticCertificate := {
  substrate := gaugeTheorySubstrate
  gaugeFieldClosed := GaugeFieldClosed primitiveYangMillsField
  actionLayerClosed := YangMillsActionClosed sourceYangMillsActionEnvelope
  constructiveLayerClosed := ConstructiveQFTClosed sourceConstructiveQFTCertificate
  massGapLayerClosed := MassGapClosed sourceMassGapCertificate
  reconstructionLayerClosed := CompactnessReconstructionClosed sourceCompactnessReconstructionCertificate
  canonicalCarriageImported := commonCoreProjectionLawAvailable ∧ commonCoreCarriageLawAvailable ∧ commonCoreIdempotenceAvailable
  gaugeFieldClosedProof := primitive_gauge_field_closed_checked
  actionLayerClosedProof := source_yang_mills_action_closed
  constructiveLayerClosedProof := source_constructive_qft_closed
  massGapLayerClosedProof := source_mass_gap_closed
  reconstructionLayerClosedProof := source_compactness_reconstruction_closed
  canonicalCarriageImportedProof := And.intro mathlib_common_core_projection_law_checked
    (And.intro mathlib_common_core_carriage_law_checked mathlib_common_core_idempotence_checked)
}

def YangMillsAnalyticCertificateClosed (C : YangMillsAnalyticCertificate) : Prop :=
  C.gaugeFieldClosed ∧
  C.actionLayerClosed ∧
  C.constructiveLayerClosed ∧
  C.massGapLayerClosed ∧
  C.reconstructionLayerClosed ∧
  C.canonicalCarriageImported

theorem source_yang_mills_analytic_certificate_closed :
    YangMillsAnalyticCertificateClosed sourceYangMillsAnalyticCertificate := by
  exact And.intro sourceYangMillsAnalyticCertificate.gaugeFieldClosedProof
    (And.intro sourceYangMillsAnalyticCertificate.actionLayerClosedProof
      (And.intro sourceYangMillsAnalyticCertificate.constructiveLayerClosedProof
        (And.intro sourceYangMillsAnalyticCertificate.massGapLayerClosedProof
          (And.intro sourceYangMillsAnalyticCertificate.reconstructionLayerClosedProof
            sourceYangMillsAnalyticCertificate.canonicalCarriageImportedProof))))

end YangMillsMassGapCanonicalLaneLean
end HautevilleHouse
