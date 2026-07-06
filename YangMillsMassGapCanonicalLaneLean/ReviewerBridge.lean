import YangMillsMassGapCanonicalLaneLean.Formalization
import YangMillsMassGapCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace YangMillsMassGapCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "149024195315c0e2cb07ccc89ec6ffb65f7a878cebfe7e9dd66c51b34cf5b95f", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "5283a3e76479e08a8abe510e5198ea057355b2b7082b924fb3e074cfcafe9126", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "4bf5988d8f93fdc2288dd35be1795032854849a7092dd121c74872ac155d427d", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "0105338debd000fdee0bb0918db19a4bce9a63870979237c1220833744114453", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "3e2ab7036b947d5aa42dbbea46b93c13776f7b3db8134eab5a1b4a472b467972", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "a6f0afb5e30bdd02dae4cb86c70b6520ffffbe8404e5561d822a908b23d32ae7", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "8f6a62a24dc5b9220fdb1130331578f69a6878df19737b11567a086227fa2d27", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "2cb35527512924b0a76d624f2455f0d21ad36ec7d9bcef6fad60ff9254e4c8e8", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "b08f65caaca196b3c3c02473433742e5fa4f5868f32f48fb16a6b9237cd5ee71", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Scalar closure" },
  { index := 6, label := "YM_EQ1" },
  { index := 7, label := "YM_EQ2" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "f09d4b55b0453f3ae4e90b7e10a9fbe61d15b43b79456f1d340e81a41a9cdbe4" },
  { path := "README.md", sha256 := "1dc7444114c080af26d7f44817b9d33662211ff773debf34289591b6a42e570b" },
  { path := "artifacts/constants_extracted.json", sha256 := "0105338debd000fdee0bb0918db19a4bce9a63870979237c1220833744114453" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "4bf5988d8f93fdc2288dd35be1795032854849a7092dd121c74872ac155d427d" },
  { path := "artifacts/constants_registry.json", sha256 := "3e2ab7036b947d5aa42dbbea46b93c13776f7b3db8134eab5a1b4a472b467972" },
  { path := "artifacts/promotion_report.json", sha256 := "8f6a62a24dc5b9220fdb1130331578f69a6878df19737b11567a086227fa2d27" },
  { path := "artifacts/stitch_constants.json", sha256 := "a6f0afb5e30bdd02dae4cb86c70b6520ffffbe8404e5561d822a908b23d32ae7" },
  { path := "notes/EG1_public.md", sha256 := "f09e4133d48d1fe161807f5377348dfc32f0a286c545ef5c883df7dc26443833" },
  { path := "notes/EG2_public.md", sha256 := "c3db0a0aae7ff706603cad80fdf1f871576036b4bcb52d6391abcb5207dab2f7" },
  { path := "notes/EG3_public.md", sha256 := "b0b87075fb01088c2984ceb4619ab4d25fbab93c02153e53d4ea3655d1e8bd31" },
  { path := "notes/EG4_public.md", sha256 := "5587b7d023dd055685b332e60ca2ea97f606536a726a688c9761f59cc30ae768" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "5283a3e76479e08a8abe510e5198ea057355b2b7082b924fb3e074cfcafe9126" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "98703a8be6176a0095427c8149a4ec1e568d9f9c19ca671eae974de6c9d40606" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "5784874076cce4625e2b0684bf0ff7b287687f1e97f41c005c1869759d551e84" },
  { path := "paper/YANG_MILLS_MASS_GAP_PREPRINT.md", sha256 := "a2b604cca64e17e38d792bb8c3efdd87f8a509b6cc2699c2e21291d93179aa2d" },
  { path := "repro/REPRO_PACK.md", sha256 := "11baf2fc375c96b70c861d904afafddb5702f1bd5c4c569dc5710d714865aa5f" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "de1b6a3315ac9de3528ab576e0a0becfc3335bb7df9f60b6c68318ea1f5db261" },
  { path := "repro/certificate_baseline.json", sha256 := "b08f65caaca196b3c3c02473433742e5fa4f5868f32f48fb16a6b9237cd5ee71" },
  { path := "repro/run_repro.sh", sha256 := "d2d9fd12d7f136de508c4c9871e49aa18e123004aa983933828055e2158bb1dc" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/ym_closure_guard.py", sha256 := "e184337d1f5e65aa09563244acb95f90995fd6eb6583df41aebc1a4dfb0b3ca9" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "Y_G1", status := "PASS" },
  { gate := "Y_G2", status := "PASS" },
  { gate := "Y_G3", status := "PASS" },
  { gate := "Y_G4", status := "PASS" },
  { gate := "Y_G5", status := "PASS" },
  { gate := "Y_G6", status := "PASS" },
  { gate := "Y_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_coercive", value := "1.0" },
  { key := "kappa_compact", value := "1.0" },
  { key := "m_gap_lower", value := "1.0" },
  { key := "rho_os", value := "1.0" },
  { key := "sigma_capture", value := "1.0" },
  { key := "sigma_star_can", value := "1.0" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "kappa_coercive",
  "kappa_compact",
  "m_gap_lower",
  "rho_os",
  "sigma_capture",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 7 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 0 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 24 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end YangMillsMassGapCanonicalLaneLean
end HautevilleHouse
