name: Terraform CI — Change Detector

# Trigger on any PR or push so that the pipeline can diff against main
on:
  pull_request:
    types: [opened, reopened, synchronize]
  push:

jobs:
  filter:
    name: 🔀 Detect what changed
    runs-on: ubuntu-latest
    outputs:
      s3_bucket:    ${{ steps.detect.outputs.s3_bucket }}
      ssm_parameter: ${{ steps.detect.outputs.ssm_parameter }}
    steps:
      - name: Checkout full history
        uses: actions/checkout@v3
        with:
          fetch-depth: 0

      - name: Diff against main
        id: detect
        run: |
          git fetch origin main
          echo "::debug::Diffing origin/main…HEAD"
          files=$(git diff --name-only origin/main...HEAD)
          echo "::debug::Changed files:\n$files"

          s3=false; ssm=false
          for f in $files; do
            [[ $f == modules/s3_bucket/*    ]] && s3=true
            [[ $f == modules/ssm_parameter/* ]] && ssm=true
          done

          echo "s3_bucket=$s3"    >> $GITHUB_OUTPUT
          echo "ssm_parameter=$ssm" >> $GITHUB_OUTPUT

      - name: Report
        run: |
          echo "→ modules/s3_bucket changed?    ${{ steps.detect.outputs.s3_bucket }}"
          echo "→ modules/ssm_parameter changed? ${{ steps.detect.outputs.ssm_parameter }}"
