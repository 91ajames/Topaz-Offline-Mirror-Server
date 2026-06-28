@echo off
@echo should contain 325 files, not 216 files.

setlocal
mkdir "C:\TopazMirror\v1" 2>nul

mkdir "C:\TopazMirror\_test" 2>nul
if not exist > "C:\TopazMirror\_test\models-bal-test.txt" (
    > "C:\TopazMirror\_test\models-bal-test.txt" echo Connected!
)

mkdir "C:\TopazMirror\1.1" 2>nul
if not exist > "C:\TopazMirror\1.1\test.txt" (
    > "C:\TopazMirror\1.1\test.txt echo Connected!
)

mkdir "C:\TopazMirror\v1\track" 2>nul
if not exist > "C:\TopazMirror\1.1\track\OK.txt" (
	> "C:\TopazMirror\1.1\track\OK.txt echo OK


if not exist "C:\TopazMirror\v1\manifest.json" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\manifest.json" "http://models.topazlabs.com/v1/manifest.json"
)

if not exist "C:\TopazMirror\v1\apnb-v2-fp16-512x512-rev2-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\apnb-v2-fp16-512x512-rev2-ox.tz2" "http://models.topazlabs.com/v1/apnb-v2-fp16-512x512-rev2-ox.tz2"
)

if not exist "C:\TopazMirror\v1\apnb-v2-fp32-512x512-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\apnb-v2-fp32-512x512-ov.tz2" "http://models.topazlabs.com/v1/apnb-v2-fp32-512x512-ov.tz2"
)

if not exist "C:\TopazMirror\v1\apnb-v2-fp32-512x512-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\apnb-v2-fp32-512x512-ox.tz2" "http://models.topazlabs.com/v1/apnb-v2-fp32-512x512-ox.tz2"
)

if not exist "C:\TopazMirror\v1\claa-v1-fp32-512x512-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\claa-v1-fp32-512x512-ov.tz2" "http://models.topazlabs.com/v1/claa-v1-fp32-512x512-ov.tz2"
)

if not exist "C:\TopazMirror\v1\claa-v1-fp32-512x512-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\claa-v1-fp32-512x512-ox.tz2" "http://models.topazlabs.com/v1/claa-v1-fp32-512x512-ox.tz2"
)

if not exist "C:\TopazMirror\v1\claae-v1-fp32-512x512-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\claae-v1-fp32-512x512-ov.tz2" "http://models.topazlabs.com/v1/claae-v1-fp32-512x512-ov.tz2"
)

if not exist "C:\TopazMirror\v1\claae-v1-fp32-512x512-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\claae-v1-fp32-512x512-ox.tz2" "http://models.topazlabs.com/v1/claae-v1-fp32-512x512-ox.tz2"
)

if not exist "C:\TopazMirror\v1\clc-v2-fp32-512x512-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\clc-v2-fp32-512x512-ov.tz2" "http://models.topazlabs.com/v1/clc-v2-fp32-512x512-ov.tz2"
)

if not exist "C:\TopazMirror\v1\clc-v3-fp16-512x512-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\clc-v3-fp16-512x512-ox.tz2" "http://models.topazlabs.com/v1/clc-v3-fp16-512x512-ox.tz2"
)

if not exist "C:\TopazMirror\v1\clc-v3-fp32-512x512-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\clc-v3-fp32-512x512-ox.tz2" "http://models.topazlabs.com/v1/clc-v3-fp32-512x512-ox.tz2"
)

if not exist "C:\TopazMirror\v1\daclip-v3-fp16-256x256-rev1-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\daclip-v3-fp16-256x256-rev1-ox.tz2" "http://models.topazlabs.com/v1/daclip-v3-fp16-256x256-rev1-ox.tz2"
)

if not exist "C:\TopazMirror\v1\daclip-v3-fp32-256x256-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\daclip-v3-fp32-256x256-ox.tz2" "http://models.topazlabs.com/v1/daclip-v3-fp32-256x256-ox.tz2"
)

if not exist "C:\TopazMirror\v1\default_prompt.bin" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\default_prompt.bin" "http://models.topazlabs.com/v1/default_prompt.bin"
)

if not exist "C:\TopazMirror\v1\dnt_beta-v5-fp32-512x512-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\dnt_beta-v5-fp32-512x512-ov.tz2" "http://models.topazlabs.com/v1/dnt_beta-v5-fp32-512x512-ov.tz2"
)

if not exist "C:\TopazMirror\v1\dnt_beta-v5-fp32-512x512-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\dnt_beta-v5-fp32-512x512-ox.tz2" "http://models.topazlabs.com/v1/dnt_beta-v5-fp32-512x512-ox.tz2"
)

if not exist "C:\TopazMirror\v1\draw_linear-v1-fp32-512x512-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\draw_linear-v1-fp32-512x512-ov.tz2" "http://models.topazlabs.com/v1/draw_linear-v1-fp32-512x512-ov.tz2"
)

if not exist "C:\TopazMirror\v1\draw_linear-v1-fp32-512x512-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\draw_linear-v1-fp32-512x512-ox.tz2" "http://models.topazlabs.com/v1/draw_linear-v1-fp32-512x512-ox.tz2"
)

if not exist "C:\TopazMirror\v1\drw_native-v1-fp16-512x512-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\drw_native-v1-fp16-512x512-ov.tz2" "http://models.topazlabs.com/v1/drw_native-v1-fp16-512x512-ov.tz2"
)

if not exist "C:\TopazMirror\v1\drw_native-v1-fp32-512x512-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\drw_native-v1-fp32-512x512-ox.tz2" "http://models.topazlabs.com/v1/drw_native-v1-fp32-512x512-ox.tz2"
)

if not exist "C:\TopazMirror\v1\drw_standard-v1-fp16-512x512-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\drw_standard-v1-fp16-512x512-ov.tz2" "http://models.topazlabs.com/v1/drw_standard-v1-fp16-512x512-ov.tz2"
)

if not exist "C:\TopazMirror\v1\drw_standard-v1-fp32-512x512-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\drw_standard-v1-fp32-512x512-ox.tz2" "http://models.topazlabs.com/v1/drw_standard-v1-fp32-512x512-ox.tz2"
)

if not exist "C:\TopazMirror\v1\dswn_dec-v1-fp32-128x128-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\dswn_dec-v1-fp32-128x128-ox.tz2" "http://models.topazlabs.com/v1/dswn_dec-v1-fp32-128x128-ox.tz2"
)

if not exist "C:\TopazMirror\v1\dswn_dit-v1-fp16-128x128-rev1-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\dswn_dit-v1-fp16-128x128-rev1-ox.tz2" "http://models.topazlabs.com/v1/dswn_dit-v1-fp16-128x128-rev1-ox.tz2"
)

if not exist "C:\TopazMirror\v1\dswn_enc-v1-fp32-1024x1024-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\dswn_enc-v1-fp32-1024x1024-ox.tz2" "http://models.topazlabs.com/v1/dswn_enc-v1-fp32-1024x1024-ox.tz2"
)

if not exist "C:\TopazMirror\v1\expog-v1-fp16-512x512-1x-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\expog-v1-fp16-512x512-1x-ov.tz2" "http://models.topazlabs.com/v1/expog-v1-fp16-512x512-1x-ov.tz2"
)

if not exist "C:\TopazMirror\v1\expog-v1-fp16-512x512-1x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\expog-v1-fp16-512x512-1x-ox.tz2" "http://models.topazlabs.com/v1/expog-v1-fp16-512x512-1x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\expoi-v1-fp32-256x256-1x-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\expoi-v1-fp32-256x256-1x-ov.tz2" "http://models.topazlabs.com/v1/expoi-v1-fp32-256x256-1x-ov.tz2"
)

if not exist "C:\TopazMirror\v1\expoi-v1-fp32-256x256-1x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\expoi-v1-fp32-256x256-1x-ox.tz2" "http://models.topazlabs.com/v1/expoi-v1-fp32-256x256-1x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\gclc-v1-fp16-128x128-2x-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gclc-v1-fp16-128x128-2x-ov.tz2" "http://models.topazlabs.com/v1/gclc-v1-fp16-128x128-2x-ov.tz2"
)

if not exist "C:\TopazMirror\v1\gclc-v1-fp16-128x128-4x-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gclc-v1-fp16-128x128-4x-ov.tz2" "http://models.topazlabs.com/v1/gclc-v1-fp16-128x128-4x-ov.tz2"
)

if not exist "C:\TopazMirror\v1\gclc-v1-fp16-192x192-2x-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gclc-v1-fp16-192x192-2x-ov.tz2" "http://models.topazlabs.com/v1/gclc-v1-fp16-192x192-2x-ov.tz2"
)

if not exist "C:\TopazMirror\v1\gclc-v1-fp16-192x192-4x-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gclc-v1-fp16-192x192-4x-ov.tz2" "http://models.topazlabs.com/v1/gclc-v1-fp16-192x192-4x-ov.tz2"
)

if not exist "C:\TopazMirror\v1\gclc-v1-fp16-96x96-2x-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gclc-v1-fp16-96x96-2x-ov.tz2" "http://models.topazlabs.com/v1/gclc-v1-fp16-96x96-2x-ov.tz2"
)

if not exist "C:\TopazMirror\v1\gclc-v1-fp16-96x96-4x-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gclc-v1-fp16-96x96-4x-ov.tz2" "http://models.topazlabs.com/v1/gclc-v1-fp16-96x96-4x-ov.tz2"
)

if not exist "C:\TopazMirror\v1\gclc-v1-fp32-128x128-2x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gclc-v1-fp32-128x128-2x-ox.tz2" "http://models.topazlabs.com/v1/gclc-v1-fp32-128x128-2x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\gclc-v1-fp32-128x128-4x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gclc-v1-fp32-128x128-4x-ox.tz2" "http://models.topazlabs.com/v1/gclc-v1-fp32-128x128-4x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\gclc-v1-fp32-192x192-1x-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gclc-v1-fp32-192x192-1x-ov.tz2" "http://models.topazlabs.com/v1/gclc-v1-fp32-192x192-1x-ov.tz2"
)

if not exist "C:\TopazMirror\v1\gclc-v1-fp32-192x192-1x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gclc-v1-fp32-192x192-1x-ox.tz2" "http://models.topazlabs.com/v1/gclc-v1-fp32-192x192-1x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\gclc-v1-fp32-192x192-2x-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gclc-v1-fp32-192x192-2x-ov.tz2" "http://models.topazlabs.com/v1/gclc-v1-fp32-192x192-2x-ov.tz2"
)

if not exist "C:\TopazMirror\v1\gclc-v1-fp32-192x192-2x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gclc-v1-fp32-192x192-2x-ox.tz2" "http://models.topazlabs.com/v1/gclc-v1-fp32-192x192-2x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\gclc-v1-fp32-192x192-4x-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gclc-v1-fp32-192x192-4x-ov.tz2" "http://models.topazlabs.com/v1/gclc-v1-fp32-192x192-4x-ov.tz2"
)

if not exist "C:\TopazMirror\v1\gclc-v1-fp32-192x192-4x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gclc-v1-fp32-192x192-4x-ox.tz2" "http://models.topazlabs.com/v1/gclc-v1-fp32-192x192-4x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\gclc-v1-fp32-96x96-2x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gclc-v1-fp32-96x96-2x-ox.tz2" "http://models.topazlabs.com/v1/gclc-v1-fp32-96x96-2x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\gclc-v1-fp32-96x96-4x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gclc-v1-fp32-96x96-4x-ox.tz2" "http://models.topazlabs.com/v1/gclc-v1-fp32-96x96-4x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\gde-v1-fp32-192x192-1x-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gde-v1-fp32-192x192-1x-ov.tz2" "http://models.topazlabs.com/v1/gde-v1-fp32-192x192-1x-ov.tz2"
)

if not exist "C:\TopazMirror\v1\gde-v1-fp32-192x192-2x-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gde-v1-fp32-192x192-2x-ov.tz2" "http://models.topazlabs.com/v1/gde-v1-fp32-192x192-2x-ov.tz2"
)

if not exist "C:\TopazMirror\v1\gde-v1-fp32-192x192-4x-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gde-v1-fp32-192x192-4x-ov.tz2" "http://models.topazlabs.com/v1/gde-v1-fp32-192x192-4x-ov.tz2"
)

if not exist "C:\TopazMirror\v1\gde-v2-fp32-192x192-1x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gde-v2-fp32-192x192-1x-ox.tz2" "http://models.topazlabs.com/v1/gde-v2-fp32-192x192-1x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\gde-v2-fp32-192x192-2x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gde-v2-fp32-192x192-2x-ox.tz2" "http://models.topazlabs.com/v1/gde-v2-fp32-192x192-2x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\gde-v2-fp32-192x192-4x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gde-v2-fp32-192x192-4x-ox.tz2" "http://models.topazlabs.com/v1/gde-v2-fp32-192x192-4x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\gde_ap-v1-fp16-64x64-rev2-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gde_ap-v1-fp16-64x64-rev2-ox.tz2" "http://models.topazlabs.com/v1/gde_ap-v1-fp16-64x64-rev2-ox.tz2"
)

if not exist "C:\TopazMirror\v1\gfclc-v1-fp32-512x512-ov-11.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gfclc-v1-fp32-512x512-ov-11.tz2" "http://models.topazlabs.com/v1/gfclc-v1-fp32-512x512-ov-11.tz2"
)

if not exist "C:\TopazMirror\v1\gffm-v1-fp32-512x512-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gffm-v1-fp32-512x512-ov.tz2" "http://models.topazlabs.com/v1/gffm-v1-fp32-512x512-ov.tz2"
)

if not exist "C:\TopazMirror\v1\gffm-v1-fp32-512x512-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gffm-v1-fp32-512x512-ox.tz2" "http://models.topazlabs.com/v1/gffm-v1-fp32-512x512-ox.tz2"
)

if not exist "C:\TopazMirror\v1\gfg-v1-fp16-512x512-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gfg-v1-fp16-512x512-ov.tz2" "http://models.topazlabs.com/v1/gfg-v1-fp16-512x512-ov.tz2"
)

if not exist "C:\TopazMirror\v1\gfg-v1-fp32-512x512-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gfg-v1-fp32-512x512-ox.tz2" "http://models.topazlabs.com/v1/gfg-v1-fp32-512x512-ox.tz2"
)

if not exist "C:\TopazMirror\v1\gfp-l-v1-fp32-2048x2048-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gfp-l-v1-fp32-2048x2048-ov.tz2" "http://models.topazlabs.com/v1/gfp-l-v1-fp32-2048x2048-ov.tz2"
)

if not exist "C:\TopazMirror\v1\gfp-l-v1-fp32-2048x2048-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gfp-l-v1-fp32-2048x2048-ox.tz2" "http://models.topazlabs.com/v1/gfp-l-v1-fp32-2048x2048-ox.tz2"
)

if not exist "C:\TopazMirror\v1\gfp-s-v1-fp32-1024x1024-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gfp-s-v1-fp32-1024x1024-ov.tz2" "http://models.topazlabs.com/v1/gfp-s-v1-fp32-1024x1024-ov.tz2"
)

if not exist "C:\TopazMirror\v1\gfp-s-v1-fp32-1024x1024-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gfp-s-v1-fp32-1024x1024-ox.tz2" "http://models.topazlabs.com/v1/gfp-s-v1-fp32-1024x1024-ox.tz2"
)

if not exist "C:\TopazMirror\v1\gfpf-v1-fp16-48x48-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gfpf-v1-fp16-48x48-ov.tz2" "http://models.topazlabs.com/v1/gfpf-v1-fp16-48x48-ov.tz2"
)

if not exist "C:\TopazMirror\v1\gfpf-v1-fp32-48x48-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gfpf-v1-fp32-48x48-ox.tz2" "http://models.topazlabs.com/v1/gfpf-v1-fp32-48x48-ox.tz2"
)

if not exist "C:\TopazMirror\v1\gfrf-v2-fp16-1024x1024-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gfrf-v2-fp16-1024x1024-ov.tz2" "http://models.topazlabs.com/v1/gfrf-v2-fp16-1024x1024-ov.tz2"
)

if not exist "C:\TopazMirror\v1\gfrf-v2-fp32-1024x1024-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gfrf-v2-fp32-1024x1024-ox.tz2" "http://models.topazlabs.com/v1/gfrf-v2-fp32-1024x1024-ox.tz2"
)

if not exist "C:\TopazMirror\v1\gfrfn-v3-fp32-1024x1024-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gfrfn-v3-fp32-1024x1024-ox.tz2" "http://models.topazlabs.com/v1/gfrfn-v3-fp32-1024x1024-ox.tz2"
)

if not exist "C:\TopazMirror\v1\gfrg-v3-fp16-512x512-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gfrg-v3-fp16-512x512-ov.tz2" "http://models.topazlabs.com/v1/gfrg-v3-fp16-512x512-ov.tz2"
)

if not exist "C:\TopazMirror\v1\gfrg-v3-fp32-512x512-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gfrg-v3-fp32-512x512-ox.tz2" "http://models.topazlabs.com/v1/gfrg-v3-fp32-512x512-ox.tz2"
)

if not exist "C:\TopazMirror\v1\ggi-v1-fp32-192x192-2x-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ggi-v1-fp32-192x192-2x-ov.tz2" "http://models.topazlabs.com/v1/ggi-v1-fp32-192x192-2x-ov.tz2"
)

if not exist "C:\TopazMirror\v1\ggi-v1-fp32-192x192-4x-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ggi-v1-fp32-192x192-4x-ov.tz2" "http://models.topazlabs.com/v1/ggi-v1-fp32-192x192-4x-ov.tz2"
)

if not exist "C:\TopazMirror\v1\ggi-v2-fp32-192x192-2x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ggi-v2-fp32-192x192-2x-ox.tz2" "http://models.topazlabs.com/v1/ggi-v2-fp32-192x192-2x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\ggi-v2-fp32-192x192-4x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ggi-v2-fp32-192x192-4x-ox.tz2" "http://models.topazlabs.com/v1/ggi-v2-fp32-192x192-4x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\ggn-v3-fix-fp16-128x128-2x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ggn-v3-fix-fp16-128x128-2x-ox.tz2" "http://models.topazlabs.com/v1/ggn-v3-fix-fp16-128x128-2x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\ggn-v3-fp16-128x128-2x-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ggn-v3-fp16-128x128-2x-ov.tz2" "http://models.topazlabs.com/v1/ggn-v3-fp16-128x128-2x-ov.tz2"
)

if not exist "C:\TopazMirror\v1\ggn-v3-fp16-128x128-4x-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ggn-v3-fp16-128x128-4x-ov.tz2" "http://models.topazlabs.com/v1/ggn-v3-fp16-128x128-4x-ov.tz2"
)

if not exist "C:\TopazMirror\v1\ggn-v3-fp16-128x128-4x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ggn-v3-fp16-128x128-4x-ox.tz2" "http://models.topazlabs.com/v1/ggn-v3-fp16-128x128-4x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\ggn-v3-fp32-128x128-2x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ggn-v3-fp32-128x128-2x-ox.tz2" "http://models.topazlabs.com/v1/ggn-v3-fp32-128x128-2x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\ggn-v3-fp32-128x128-4x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ggn-v3-fp32-128x128-4x-ox.tz2" "http://models.topazlabs.com/v1/ggn-v3-fp32-128x128-4x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\ggnv2-v3-fp16-128x128-2x-rev2-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ggnv2-v3-fp16-128x128-2x-rev2-ov.tz2" "http://models.topazlabs.com/v1/ggnv2-v3-fp16-128x128-2x-rev2-ov.tz2"
)

if not exist "C:\TopazMirror\v1\ggnv2-v3-fp16-128x128-4x-rev2-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ggnv2-v3-fp16-128x128-4x-rev2-ov.tz2" "http://models.topazlabs.com/v1/ggnv2-v3-fp16-128x128-4x-rev2-ov.tz2"
)

if not exist "C:\TopazMirror\v1\ggnv2-v3-fp32-128x128-2x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ggnv2-v3-fp32-128x128-2x-ox.tz2" "http://models.topazlabs.com/v1/ggnv2-v3-fp32-128x128-2x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\ggnv2-v3-fp32-128x128-4x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ggnv2-v3-fp32-128x128-4x-ox.tz2" "http://models.topazlabs.com/v1/ggnv2-v3-fp32-128x128-4x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\ggn_ap-v2-fp16-128x128-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ggn_ap-v2-fp16-128x128-ov.tz2" "http://models.topazlabs.com/v1/ggn_ap-v2-fp16-128x128-ov.tz2"
)

if not exist "C:\TopazMirror\v1\ggn_ap-v2-fp16-128x128-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ggn_ap-v2-fp16-128x128-ox.tz2" "http://models.topazlabs.com/v1/ggn_ap-v2-fp16-128x128-ox.tz2"
)

if not exist "C:\TopazMirror\v1\ggn_ap-v2-fp16-128x128-rev2-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ggn_ap-v2-fp16-128x128-rev2-ox.tz2" "http://models.topazlabs.com/v1/ggn_ap-v2-fp16-128x128-rev2-ox.tz2"
)

if not exist "C:\TopazMirror\v1\ggn_ap-v2-fp16-512x512-rev2-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ggn_ap-v2-fp16-512x512-rev2-ox.tz2" "http://models.topazlabs.com/v1/ggn_ap-v2-fp16-512x512-rev2-ox.tz2"
)

if not exist "C:\TopazMirror\v1\ghc-v2-fp32-192x192-1x-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ghc-v2-fp32-192x192-1x-ov.tz2" "http://models.topazlabs.com/v1/ghc-v2-fp32-192x192-1x-ov.tz2"
)

if not exist "C:\TopazMirror\v1\ghc-v2-fp32-192x192-1x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ghc-v2-fp32-192x192-1x-ox.tz2" "http://models.topazlabs.com/v1/ghc-v2-fp32-192x192-1x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\ghc-v2-fp32-192x192-2x-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ghc-v2-fp32-192x192-2x-ov.tz2" "http://models.topazlabs.com/v1/ghc-v2-fp32-192x192-2x-ov.tz2"
)

if not exist "C:\TopazMirror\v1\ghc-v2-fp32-192x192-2x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ghc-v2-fp32-192x192-2x-ox.tz2" "http://models.topazlabs.com/v1/ghc-v2-fp32-192x192-2x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\ghc-v2-fp32-192x192-4x-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ghc-v2-fp32-192x192-4x-ov.tz2" "http://models.topazlabs.com/v1/ghc-v2-fp32-192x192-4x-ov.tz2"
)

if not exist "C:\TopazMirror\v1\ghc-v2-fp32-192x192-4x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ghc-v2-fp32-192x192-4x-ox.tz2" "http://models.topazlabs.com/v1/ghc-v2-fp32-192x192-4x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\ghq-v1-fix-fp16-96x96-2x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ghq-v1-fix-fp16-96x96-2x-ox.tz2" "http://models.topazlabs.com/v1/ghq-v1-fix-fp16-96x96-2x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\ghq-v1-fp16-96x96-2x-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ghq-v1-fp16-96x96-2x-ov.tz2" "http://models.topazlabs.com/v1/ghq-v1-fp16-96x96-2x-ov.tz2"
)

if not exist "C:\TopazMirror\v1\ghq-v1-fp16-96x96-4x-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ghq-v1-fp16-96x96-4x-ov.tz2" "http://models.topazlabs.com/v1/ghq-v1-fp16-96x96-4x-ov.tz2"
)

if not exist "C:\TopazMirror\v1\ghq-v1-fp16-96x96-4x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ghq-v1-fp16-96x96-4x-ox.tz2" "http://models.topazlabs.com/v1/ghq-v1-fp16-96x96-4x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\ghq-v1-fp32-96x96-2x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ghq-v1-fp32-96x96-2x-ox.tz2" "http://models.topazlabs.com/v1/ghq-v1-fp32-96x96-2x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\ghq-v1-fp32-96x96-4x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ghq-v1-fp32-96x96-4x-ox.tz2" "http://models.topazlabs.com/v1/ghq-v1-fp32-96x96-4x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\ghqv2-v1-fp16-128x128-2x-rev2-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ghqv2-v1-fp16-128x128-2x-rev2-ov.tz2" "http://models.topazlabs.com/v1/ghqv2-v1-fp16-128x128-2x-rev2-ov.tz2"
)

if not exist "C:\TopazMirror\v1\ghqv2-v1-fp16-128x128-4x-rev2-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ghqv2-v1-fp16-128x128-4x-rev2-ov.tz2" "http://models.topazlabs.com/v1/ghqv2-v1-fp16-128x128-4x-rev2-ov.tz2"
)

if not exist "C:\TopazMirror\v1\ghqv2-v1-fp32-128x128-2x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ghqv2-v1-fp32-128x128-2x-ox.tz2" "http://models.topazlabs.com/v1/ghqv2-v1-fp32-128x128-2x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\ghqv2-v1-fp32-128x128-4x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ghqv2-v1-fp32-128x128-4x-ox.tz2" "http://models.topazlabs.com/v1/ghqv2-v1-fp32-128x128-4x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\ghqv2_ldn-v1-fp16-128x128-2x-rev2-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ghqv2_ldn-v1-fp16-128x128-2x-rev2-ov.tz2" "http://models.topazlabs.com/v1/ghqv2_ldn-v1-fp16-128x128-2x-rev2-ov.tz2"
)

if not exist "C:\TopazMirror\v1\ghqv2_ldn-v1-fp16-128x128-4x-rev2-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ghqv2_ldn-v1-fp16-128x128-4x-rev2-ov.tz2" "http://models.topazlabs.com/v1/ghqv2_ldn-v1-fp16-128x128-4x-rev2-ov.tz2"
)

if not exist "C:\TopazMirror\v1\ghqv2_ldn-v1-fp32-128x128-2x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ghqv2_ldn-v1-fp32-128x128-2x-ox.tz2" "http://models.topazlabs.com/v1/ghqv2_ldn-v1-fp32-128x128-2x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\ghqv2_ldn-v1-fp32-128x128-4x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ghqv2_ldn-v1-fp32-128x128-4x-ox.tz2" "http://models.topazlabs.com/v1/ghqv2_ldn-v1-fp32-128x128-4x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\ghqv3-v2-fp16-512x512-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ghqv3-v2-fp16-512x512-ox.tz2" "http://models.topazlabs.com/v1/ghqv3-v2-fp16-512x512-ox.tz2"
)

if not exist "C:\TopazMirror\v1\ghqv3-v2-fp16-512x512-rev1-ort.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ghqv3-v2-fp16-512x512-rev1-ort.tz2" "http://models.topazlabs.com/v1/ghqv3-v2-fp16-512x512-rev1-ort.tz2"
)

if not exist "C:\TopazMirror\v1\ghqv3-v2-fp16-512x512-rev1-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ghqv3-v2-fp16-512x512-rev1-ox.tz2" "http://models.topazlabs.com/v1/ghqv3-v2-fp16-512x512-rev1-ox.tz2"
)

if not exist "C:\TopazMirror\v1\ghqv3_cache-v2-fp16-224x224-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ghqv3_cache-v2-fp16-224x224-ox.tz2" "http://models.topazlabs.com/v1/ghqv3_cache-v2-fp16-224x224-ox.tz2"
)

if not exist "C:\TopazMirror\v1\gmp-v1-fp32-192x192-2x-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gmp-v1-fp32-192x192-2x-ov.tz2" "http://models.topazlabs.com/v1/gmp-v1-fp32-192x192-2x-ov.tz2"
)

if not exist "C:\TopazMirror\v1\gmp-v1-fp32-192x192-4x-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gmp-v1-fp32-192x192-4x-ov.tz2" "http://models.topazlabs.com/v1/gmp-v1-fp32-192x192-4x-ov.tz2"
)

if not exist "C:\TopazMirror\v1\gmp-v2-fp32-192x192-2x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gmp-v2-fp32-192x192-2x-ox.tz2" "http://models.topazlabs.com/v1/gmp-v2-fp32-192x192-2x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\gmp-v2-fp32-192x192-4x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gmp-v2-fp32-192x192-4x-ox.tz2" "http://models.topazlabs.com/v1/gmp-v2-fp32-192x192-4x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\gmpv2-v13-fp16-192x192-2x-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gmpv2-v13-fp16-192x192-2x-ov.tz2" "http://models.topazlabs.com/v1/gmpv2-v13-fp16-192x192-2x-ov.tz2"
)

if not exist "C:\TopazMirror\v1\gmpv2-v13-fp16-192x192-4x-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gmpv2-v13-fp16-192x192-4x-ov.tz2" "http://models.topazlabs.com/v1/gmpv2-v13-fp16-192x192-4x-ov.tz2"
)

if not exist "C:\TopazMirror\v1\gmpv2-v13-fp32-192x192-2x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gmpv2-v13-fp32-192x192-2x-ox.tz2" "http://models.topazlabs.com/v1/gmpv2-v13-fp32-192x192-2x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\gmpv2-v13-fp32-192x192-4x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\gmpv2-v13-fp32-192x192-4x-ox.tz2" "http://models.topazlabs.com/v1/gmpv2-v13-fp32-192x192-4x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\iisa-v1-fp16-1024x1024-rev1-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\iisa-v1-fp16-1024x1024-rev1-ox.tz2" "http://models.topazlabs.com/v1/iisa-v1-fp16-1024x1024-rev1-ox.tz2"
)

if not exist "C:\TopazMirror\v1\iisa-v1-fp32-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\iisa-v1-fp32-ox.tz2" "http://models.topazlabs.com/v1/iisa-v1-fp32-ox.tz2"
)

if not exist "C:\TopazMirror\v1\iri-v1-fp32-800x800-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\iri-v1-fp32-800x800-ov.tz2" "http://models.topazlabs.com/v1/iri-v1-fp32-800x800-ov.tz2"
)

if not exist "C:\TopazMirror\v1\irwn_dec-v2-fp32-64x64-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\irwn_dec-v2-fp32-64x64-ox.tz2" "http://models.topazlabs.com/v1/irwn_dec-v2-fp32-64x64-ox.tz2"
)

if not exist "C:\TopazMirror\v1\irwn_dit-v2-fp16-128x128-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\irwn_dit-v2-fp16-128x128-ox.tz2" "http://models.topazlabs.com/v1/irwn_dit-v2-fp16-128x128-ox.tz2"
)

if not exist "C:\TopazMirror\v1\irwn_dit-v2-fp32-128x128-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\irwn_dit-v2-fp32-128x128-ox.tz2" "http://models.topazlabs.com/v1/irwn_dit-v2-fp32-128x128-ox.tz2"
)

if not exist "C:\TopazMirror\v1\irwn_enc-v2-fp32-512x512-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\irwn_enc-v2-fp32-512x512-ox.tz2" "http://models.topazlabs.com/v1/irwn_enc-v2-fp32-512x512-ox.tz2"
)

if not exist "C:\TopazMirror\v1\isoa-v1-fp32-512x512-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\isoa-v1-fp32-512x512-ov.tz2" "http://models.topazlabs.com/v1/isoa-v1-fp32-512x512-ov.tz2"
)

if not exist "C:\TopazMirror\v1\isoa-v1-fp32-512x512-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\isoa-v1-fp32-512x512-ox.tz2" "http://models.topazlabs.com/v1/isoa-v1-fp32-512x512-ox.tz2"
)

if not exist "C:\TopazMirror\v1\isob-v1-fp32-512x512-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\isob-v1-fp32-512x512-ov.tz2" "http://models.topazlabs.com/v1/isob-v1-fp32-512x512-ov.tz2"
)

if not exist "C:\TopazMirror\v1\isob-v1-fp32-512x512-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\isob-v1-fp32-512x512-ox.tz2" "http://models.topazlabs.com/v1/isob-v1-fp32-512x512-ox.tz2"
)

if not exist "C:\TopazMirror\v1\ldclc-v1-fp16-64x64-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ldclc-v1-fp16-64x64-ov.tz2" "http://models.topazlabs.com/v1/ldclc-v1-fp16-64x64-ov.tz2"
)

if not exist "C:\TopazMirror\v1\ldclc-v1-fp16-64x64-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ldclc-v1-fp16-64x64-ox.tz2" "http://models.topazlabs.com/v1/ldclc-v1-fp16-64x64-ox.tz2"
)

if not exist "C:\TopazMirror\v1\ldclc-v1-fp16-96x96-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ldclc-v1-fp16-96x96-ox.tz2" "http://models.topazlabs.com/v1/ldclc-v1-fp16-96x96-ox.tz2"
)

if not exist "C:\TopazMirror\v1\ldclc-v1-fp32-64x64-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ldclc-v1-fp32-64x64-ox.tz2" "http://models.topazlabs.com/v1/ldclc-v1-fp32-64x64-ox.tz2"
)

if not exist "C:\TopazMirror\v1\ldd21-v2-fp16-64x64-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ldd21-v2-fp16-64x64-ov.tz2" "http://models.topazlabs.com/v1/ldd21-v2-fp16-64x64-ov.tz2"
)

if not exist "C:\TopazMirror\v1\ldd21-v2-fp32-64x64-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ldd21-v2-fp32-64x64-ox.tz2" "http://models.topazlabs.com/v1/ldd21-v2-fp32-64x64-ox.tz2"
)

if not exist "C:\TopazMirror\v1\lddv21-v1-fp16-64x64-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\lddv21-v1-fp16-64x64-ov.tz2" "http://models.topazlabs.com/v1/lddv21-v1-fp16-64x64-ov.tz2"
)

if not exist "C:\TopazMirror\v1\lddv21-v1-fp32-64x64-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\lddv21-v1-fp32-64x64-ox.tz2" "http://models.topazlabs.com/v1/lddv21-v1-fp32-64x64-ox.tz2"
)

if not exist "C:\TopazMirror\v1\lde21-v1-fp16-512x512-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\lde21-v1-fp16-512x512-ov.tz2" "http://models.topazlabs.com/v1/lde21-v1-fp16-512x512-ov.tz2"
)

if not exist "C:\TopazMirror\v1\lde21-v1-fp32-512x512-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\lde21-v1-fp32-512x512-ox.tz2" "http://models.topazlabs.com/v1/lde21-v1-fp32-512x512-ox.tz2"
)

if not exist "C:\TopazMirror\v1\ldu21-v2-fp16-64x64-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ldu21-v2-fp16-64x64-ov.tz2" "http://models.topazlabs.com/v1/ldu21-v2-fp16-64x64-ov.tz2"
)

if not exist "C:\TopazMirror\v1\ldu21-v2-fp32-64x64-rev1-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ldu21-v2-fp32-64x64-rev1-ox.tz2" "http://models.topazlabs.com/v1/ldu21-v2-fp32-64x64-rev1-ox.tz2"
)

if not exist "C:\TopazMirror\v1\lensblur-v3-fp32-512x512-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\lensblur-v3-fp32-512x512-ov.tz2" "http://models.topazlabs.com/v1/lensblur-v3-fp32-512x512-ov.tz2"
)

if not exist "C:\TopazMirror\v1\lensblur-v3-fp32-512x512-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\lensblur-v3-fp32-512x512-ox.tz2" "http://models.topazlabs.com/v1/lensblur-v3-fp32-512x512-ox.tz2"
)

if not exist "C:\TopazMirror\v1\liting_det-v1-fp16-128x128-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\liting_det-v1-fp16-128x128-ox.tz2" "http://models.topazlabs.com/v1/liting_det-v1-fp16-128x128-ox.tz2"
)

if not exist "C:\TopazMirror\v1\liting_det-v1-fp16-128x128-rev2-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\liting_det-v1-fp16-128x128-rev2-ox.tz2" "http://models.topazlabs.com/v1/liting_det-v1-fp16-128x128-rev2-ox.tz2"
)

if not exist "C:\TopazMirror\v1\lmx-v1-fp16-512x512-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\lmx-v1-fp16-512x512-ov.tz2" "http://models.topazlabs.com/v1/lmx-v1-fp16-512x512-ov.tz2"
)

if not exist "C:\TopazMirror\v1\lmx-v1-fp32-512x512-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\lmx-v1-fp32-512x512-ox.tz2" "http://models.topazlabs.com/v1/lmx-v1-fp32-512x512-ox.tz2"
)

if not exist "C:\TopazMirror\v1\mobileclip2s2_age_of_photo_classifier.bin" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\mobileclip2s2_age_of_photo_classifier.bin" "http://models.topazlabs.com/v1/mobileclip2s2_age_of_photo_classifier.bin"
)

if not exist "C:\TopazMirror\v1\mobileclip2s2_main_subject_classifier.bin" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\mobileclip2s2_main_subject_classifier.bin" "http://models.topazlabs.com/v1/mobileclip2s2_main_subject_classifier.bin"
)

if not exist "C:\TopazMirror\v1\noise_det-v1-fp16-128x128-1x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\noise_det-v1-fp16-128x128-1x-ox.tz2" "http://models.topazlabs.com/v1/noise_det-v1-fp16-128x128-1x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\rxl_decoder0-v1-fp32-96x96-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\rxl_decoder0-v1-fp32-96x96-ox.tz2" "http://models.topazlabs.com/v1/rxl_decoder0-v1-fp32-96x96-ox.tz2"
)

if not exist "C:\TopazMirror\v1\rxl_decoder1-v1-fp32-120x120-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\rxl_decoder1-v1-fp32-120x120-ox.tz2" "http://models.topazlabs.com/v1/rxl_decoder1-v1-fp32-120x120-ox.tz2"
)

if not exist "C:\TopazMirror\v1\rxl_embed-v1-fp16-77x768-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\rxl_embed-v1-fp16-77x768-ox.tz2" "http://models.topazlabs.com/v1/rxl_embed-v1-fp16-77x768-ox.tz2"
)

if not exist "C:\TopazMirror\v1\rxl_encoder0-v1-fp32-768x768-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\rxl_encoder0-v1-fp32-768x768-ox.tz2" "http://models.topazlabs.com/v1/rxl_encoder0-v1-fp32-768x768-ox.tz2"
)

if not exist "C:\TopazMirror\v1\rxl_encoder1-v1-fp32-960x960-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\rxl_encoder1-v1-fp32-960x960-ox.tz2" "http://models.topazlabs.com/v1/rxl_encoder1-v1-fp32-960x960-ox.tz2"
)

if not exist "C:\TopazMirror\v1\rxl_unet0-v2-fp16-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\rxl_unet0-v2-fp16-ox.tz2" "http://models.topazlabs.com/v1/rxl_unet0-v2-fp16-ox.tz2"
)

if not exist "C:\TopazMirror\v1\rxl_unet1-v2-fp16-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\rxl_unet1-v2-fp16-ox.tz2" "http://models.topazlabs.com/v1/rxl_unet1-v2-fp16-ox.tz2"
)

if not exist "C:\TopazMirror\v1\samdec-v1-fp16-1024x1024-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\samdec-v1-fp16-1024x1024-ov.tz2" "http://models.topazlabs.com/v1/samdec-v1-fp16-1024x1024-ov.tz2"
)

if not exist "C:\TopazMirror\v1\samdec-v1-fp32-1024x1024-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\samdec-v1-fp32-1024x1024-ox.tz2" "http://models.topazlabs.com/v1/samdec-v1-fp32-1024x1024-ox.tz2"
)

if not exist "C:\TopazMirror\v1\samenc-v1-fp16-1024x1024-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\samenc-v1-fp16-1024x1024-ov.tz2" "http://models.topazlabs.com/v1/samenc-v1-fp16-1024x1024-ov.tz2"
)

if not exist "C:\TopazMirror\v1\samenc-v1-fp32-1024x1024-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\samenc-v1-fp32-1024x1024-ox.tz2" "http://models.topazlabs.com/v1/samenc-v1-fp32-1024x1024-ox.tz2"
)

if not exist "C:\TopazMirror\v1\sddustdec-v1-fp16-64x64-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\sddustdec-v1-fp16-64x64-ov.tz2" "http://models.topazlabs.com/v1/sddustdec-v1-fp16-64x64-ov.tz2"
)

if not exist "C:\TopazMirror\v1\sddustenc-v1-fp16-512x512-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\sddustenc-v1-fp16-512x512-ov.tz2" "http://models.topazlabs.com/v1/sddustenc-v1-fp16-512x512-ov.tz2"
)

if not exist "C:\TopazMirror\v1\sddustunet-v1-fp16-64x64-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\sddustunet-v1-fp16-64x64-ov.tz2" "http://models.topazlabs.com/v1/sddustunet-v1-fp16-64x64-ov.tz2"
)

if not exist "C:\TopazMirror\v1\sdi_dec-v2-fp16-512x512-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\sdi_dec-v2-fp16-512x512-ov.tz2" "http://models.topazlabs.com/v1/sdi_dec-v2-fp16-512x512-ov.tz2"
)

if not exist "C:\TopazMirror\v1\sdi_dec-v2-fp16-512x512-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\sdi_dec-v2-fp16-512x512-ox.tz2" "http://models.topazlabs.com/v1/sdi_dec-v2-fp16-512x512-ox.tz2"
)

if not exist "C:\TopazMirror\v1\sdi_dec-v4-fp16-512x512-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\sdi_dec-v4-fp16-512x512-ox.tz2" "http://models.topazlabs.com/v1/sdi_dec-v4-fp16-512x512-ox.tz2"
)

if not exist "C:\TopazMirror\v1\sdi_embed0.bin" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\sdi_embed0.bin" "http://models.topazlabs.com/v1/sdi_embed0.bin"
)

if not exist "C:\TopazMirror\v1\sdi_enc-v2-fp16-512x512-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\sdi_enc-v2-fp16-512x512-ov.tz2" "http://models.topazlabs.com/v1/sdi_enc-v2-fp16-512x512-ov.tz2"
)

if not exist "C:\TopazMirror\v1\sdi_enc-v2-fp16-512x512-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\sdi_enc-v2-fp16-512x512-ox.tz2" "http://models.topazlabs.com/v1/sdi_enc-v2-fp16-512x512-ox.tz2"
)

if not exist "C:\TopazMirror\v1\sdi_enc-v4-fp16-512x512-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\sdi_enc-v4-fp16-512x512-ox.tz2" "http://models.topazlabs.com/v1/sdi_enc-v4-fp16-512x512-ox.tz2"
)

if not exist "C:\TopazMirror\v1\sdi_imdn-v1-fp32-96x96-2x-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\sdi_imdn-v1-fp32-96x96-2x-ov.tz2" "http://models.topazlabs.com/v1/sdi_imdn-v1-fp32-96x96-2x-ov.tz2"
)

if not exist "C:\TopazMirror\v1\sdi_unet-v4-fp16-512x512-ort.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\sdi_unet-v4-fp16-512x512-ort.tz2" "http://models.topazlabs.com/v1/sdi_unet-v4-fp16-512x512-ort.tz2"
)

if not exist "C:\TopazMirror\v1\sdi_unet-v4-fp16-512x512-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\sdi_unet-v4-fp16-512x512-ov.tz2" "http://models.topazlabs.com/v1/sdi_unet-v4-fp16-512x512-ov.tz2"
)

if not exist "C:\TopazMirror\v1\sdi_unet-v5-fp16-512x512-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\sdi_unet-v5-fp16-512x512-ox.tz2" "http://models.topazlabs.com/v1/sdi_unet-v5-fp16-512x512-ox.tz2"
)

if not exist "C:\TopazMirror\v1\slb-v1-fp32-512x512-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\slb-v1-fp32-512x512-ov.tz2" "http://models.topazlabs.com/v1/slb-v1-fp32-512x512-ov.tz2"
)

if not exist "C:\TopazMirror\v1\sll-v1-fp32-512x512-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\sll-v1-fp32-512x512-ov.tz2" "http://models.topazlabs.com/v1/sll-v1-fp32-512x512-ov.tz2"
)

if not exist "C:\TopazMirror\v1\sll-v1-fp32-512x512-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\sll-v1-fp32-512x512-ox.tz2" "http://models.topazlabs.com/v1/sll-v1-fp32-512x512-ox.tz2"
)

if not exist "C:\TopazMirror\v1\slsp-v3-fp32-512x512-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\slsp-v3-fp32-512x512-ov.tz2" "http://models.topazlabs.com/v1/slsp-v3-fp32-512x512-ov.tz2"
)

if not exist "C:\TopazMirror\v1\slsp-v3-fp32-512x512-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\slsp-v3-fp32-512x512-ox.tz2" "http://models.topazlabs.com/v1/slsp-v3-fp32-512x512-ox.tz2"
)

if not exist "C:\TopazMirror\v1\slsp_ap-v2-fp16-512x512-rev2-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\slsp_ap-v2-fp16-512x512-rev2-ox.tz2" "http://models.topazlabs.com/v1/slsp_ap-v2-fp16-512x512-rev2-ox.tz2"
)

if not exist "C:\TopazMirror\v1\slsp_ap-v2-fp32-512x512-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\slsp_ap-v2-fp32-512x512-ox.tz2" "http://models.topazlabs.com/v1/slsp_ap-v2-fp32-512x512-ox.tz2"
)

if not exist "C:\TopazMirror\v1\slsp_ap-v3-fp32-512x512-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\slsp_ap-v3-fp32-512x512-ov.tz2" "http://models.topazlabs.com/v1/slsp_ap-v3-fp32-512x512-ov.tz2"
)

if not exist "C:\TopazMirror\v1\smp_flexible-v2-fp16-320x320-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\smp_flexible-v2-fp16-320x320-ov.tz2" "http://models.topazlabs.com/v1/smp_flexible-v2-fp16-320x320-ov.tz2"
)

if not exist "C:\TopazMirror\v1\smp_flexible-v2-fp16-320x320-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\smp_flexible-v2-fp16-320x320-ox.tz2" "http://models.topazlabs.com/v1/smp_flexible-v2-fp16-320x320-ox.tz2"
)

if not exist "C:\TopazMirror\v1\sms_new-v3-fp16-320x320-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\sms_new-v3-fp16-320x320-ov.tz2" "http://models.topazlabs.com/v1/sms_new-v3-fp16-320x320-ov.tz2"
)

if not exist "C:\TopazMirror\v1\sms_new-v3-fp16-320x320-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\sms_new-v3-fp16-320x320-ox.tz2" "http://models.topazlabs.com/v1/sms_new-v3-fp16-320x320-ox.tz2"
)

if not exist "C:\TopazMirror\v1\sms_new-v3-fp16-320x320-rev2-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\sms_new-v3-fp16-320x320-rev2-ox.tz2" "http://models.topazlabs.com/v1/sms_new-v3-fp16-320x320-rev2-ox.tz2"
)

if not exist "C:\TopazMirror\v1\spfcdec-v1-fp16-64x64-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\spfcdec-v1-fp16-64x64-ov.tz2" "http://models.topazlabs.com/v1/spfcdec-v1-fp16-64x64-ov.tz2"
)

if not exist "C:\TopazMirror\v1\spfcdec-v1-fp32-64x64-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\spfcdec-v1-fp32-64x64-ox.tz2" "http://models.topazlabs.com/v1/spfcdec-v1-fp32-64x64-ox.tz2"
)

if not exist "C:\TopazMirror\v1\spfcdit-v1-fp16-64x64-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\spfcdit-v1-fp16-64x64-ov.tz2" "http://models.topazlabs.com/v1/spfcdit-v1-fp16-64x64-ov.tz2"
)

if not exist "C:\TopazMirror\v1\spfcdit-v1-fp32-64x64-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\spfcdit-v1-fp32-64x64-ox.tz2" "http://models.topazlabs.com/v1/spfcdit-v1-fp32-64x64-ox.tz2"
)

if not exist "C:\TopazMirror\v1\spfcenc-v1-fp16-512x512-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\spfcenc-v1-fp16-512x512-ov.tz2" "http://models.topazlabs.com/v1/spfcenc-v1-fp16-512x512-ov.tz2"
)

if not exist "C:\TopazMirror\v1\spfcenc-v1-fp32-512x512-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\spfcenc-v1-fp32-512x512-ox.tz2" "http://models.topazlabs.com/v1/spfcenc-v1-fp32-512x512-ox.tz2"
)

if not exist "C:\TopazMirror\v1\ssddec0_0-v1-fp16-64x64-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ssddec0_0-v1-fp16-64x64-ov.tz2" "http://models.topazlabs.com/v1/ssddec0_0-v1-fp16-64x64-ov.tz2"
)

if not exist "C:\TopazMirror\v1\ssddec0_0-v1-fp32-64x64-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ssddec0_0-v1-fp32-64x64-ox.tz2" "http://models.topazlabs.com/v1/ssddec0_0-v1-fp32-64x64-ox.tz2"
)

if not exist "C:\TopazMirror\v1\ssddec0_5-v1-fp16-64x64-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ssddec0_5-v1-fp16-64x64-ov.tz2" "http://models.topazlabs.com/v1/ssddec0_5-v1-fp16-64x64-ov.tz2"
)

if not exist "C:\TopazMirror\v1\ssddec0_5-v1-fp32-64x64-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ssddec0_5-v1-fp32-64x64-ox.tz2" "http://models.topazlabs.com/v1/ssddec0_5-v1-fp32-64x64-ox.tz2"
)

if not exist "C:\TopazMirror\v1\ssddec1_0-v1-fp16-64x64-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ssddec1_0-v1-fp16-64x64-ov.tz2" "http://models.topazlabs.com/v1/ssddec1_0-v1-fp16-64x64-ov.tz2"
)

if not exist "C:\TopazMirror\v1\ssddec1_0-v1-fp32-64x64-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ssddec1_0-v1-fp32-64x64-ox.tz2" "http://models.topazlabs.com/v1/ssddec1_0-v1-fp32-64x64-ox.tz2"
)

if not exist "C:\TopazMirror\v1\ssdenc-sharpen-v1-fp16-512x512-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ssdenc-sharpen-v1-fp16-512x512-ov.tz2" "http://models.topazlabs.com/v1/ssdenc-sharpen-v1-fp16-512x512-ov.tz2"
)

if not exist "C:\TopazMirror\v1\ssdenc-v1-fp16-512x512-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ssdenc-v1-fp16-512x512-ov.tz2" "http://models.topazlabs.com/v1/ssdenc-v1-fp16-512x512-ov.tz2"
)

if not exist "C:\TopazMirror\v1\ssdenc-v1-fp16-512x512-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ssdenc-v1-fp16-512x512-ox.tz2" "http://models.topazlabs.com/v1/ssdenc-v1-fp16-512x512-ox.tz2"
)

if not exist "C:\TopazMirror\v1\ssdunet-sharpen-v1-fp16-64x64-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ssdunet-sharpen-v1-fp16-64x64-ov.tz2" "http://models.topazlabs.com/v1/ssdunet-sharpen-v1-fp16-64x64-ov.tz2"
)

if not exist "C:\TopazMirror\v1\ssdunet-v1-fp16-64x64-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ssdunet-v1-fp16-64x64-ov.tz2" "http://models.topazlabs.com/v1/ssdunet-v1-fp16-64x64-ov.tz2"
)

if not exist "C:\TopazMirror\v1\ssdunet-v1-fp32-64x64-rev1-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\ssdunet-v1-fp32-64x64-rev1-ox.tz2" "http://models.topazlabs.com/v1/ssdunet-v1-fp32-64x64-rev1-ox.tz2"
)

if not exist "C:\TopazMirror\v1\sstd-v2-fp32-512x512-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\sstd-v2-fp32-512x512-ov.tz2" "http://models.topazlabs.com/v1/sstd-v2-fp32-512x512-ov.tz2"
)

if not exist "C:\TopazMirror\v1\sstd-v2-fp32-512x512-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\sstd-v2-fp32-512x512-ox.tz2" "http://models.topazlabs.com/v1/sstd-v2-fp32-512x512-ox.tz2"
)

if not exist "C:\TopazMirror\v1\sstd_ahres-v1-fp32-512x512-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\sstd_ahres-v1-fp32-512x512-ox.tz2" "http://models.topazlabs.com/v1/sstd_ahres-v1-fp32-512x512-ox.tz2"
)

if not exist "C:\TopazMirror\v1\sstd_phres-v1-fp32-512x512-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\sstd_phres-v1-fp32-512x512-ox.tz2" "http://models.topazlabs.com/v1/sstd_phres-v1-fp32-512x512-ox.tz2"
)

if not exist "C:\TopazMirror\v1\sstg-v1-fp32-512x512-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\sstg-v1-fp32-512x512-ov.tz2" "http://models.topazlabs.com/v1/sstg-v1-fp32-512x512-ov.tz2"
)

if not exist "C:\TopazMirror\v1\sstg-v1-fp32-512x512-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\sstg-v1-fp32-512x512-ox.tz2" "http://models.topazlabs.com/v1/sstg-v1-fp32-512x512-ox.tz2"
)

if not exist "C:\TopazMirror\v1\stdmax-v1-fp16-192x192-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\stdmax-v1-fp16-192x192-ov.tz2" "http://models.topazlabs.com/v1/stdmax-v1-fp16-192x192-ov.tz2"
)

if not exist "C:\TopazMirror\v1\stdmax-v1-fp16-192x192-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\stdmax-v1-fp16-192x192-ox.tz2" "http://models.topazlabs.com/v1/stdmax-v1-fp16-192x192-ox.tz2"
)

if not exist "C:\TopazMirror\v1\s_mask_l_flexible-v2-fp16-320x320-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\s_mask_l_flexible-v2-fp16-320x320-ov.tz2" "http://models.topazlabs.com/v1/s_mask_l_flexible-v2-fp16-320x320-ov.tz2"
)

if not exist "C:\TopazMirror\v1\s_mask_l_flexible-v2-fp16-320x320-rev2-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\s_mask_l_flexible-v2-fp16-320x320-rev2-ox.tz2" "http://models.topazlabs.com/v1/s_mask_l_flexible-v2-fp16-320x320-rev2-ox.tz2"
)

if not exist "C:\TopazMirror\v1\tpn_dec-v1-fp16-64x64-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\tpn_dec-v1-fp16-64x64-ox.tz2" "http://models.topazlabs.com/v1/tpn_dec-v1-fp16-64x64-ox.tz2"
)

if not exist "C:\TopazMirror\v1\tpn_embeds.bin" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\tpn_embeds.bin" "http://models.topazlabs.com/v1/tpn_embeds.bin"
)

if not exist "C:\TopazMirror\v1\tpn_enc-v1-fp16-512x512-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\tpn_enc-v1-fp16-512x512-ox.tz2" "http://models.topazlabs.com/v1/tpn_enc-v1-fp16-512x512-ox.tz2"
)

if not exist "C:\TopazMirror\v1\tpn_unet-v1-fp16-64x64-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\tpn_unet-v1-fp16-64x64-ox.tz2" "http://models.topazlabs.com/v1/tpn_unet-v1-fp16-64x64-ox.tz2"
)

if not exist "C:\TopazMirror\v1\trf-v1-fp16-128x128-2x-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\trf-v1-fp16-128x128-2x-ov.tz2" "http://models.topazlabs.com/v1/trf-v1-fp16-128x128-2x-ov.tz2"
)

if not exist "C:\TopazMirror\v1\trf-v1-fp16-128x128-2x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\trf-v1-fp16-128x128-2x-ox.tz2" "http://models.topazlabs.com/v1/trf-v1-fp16-128x128-2x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\trf-v1-fp16-128x128-4x-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\trf-v1-fp16-128x128-4x-ov.tz2" "http://models.topazlabs.com/v1/trf-v1-fp16-128x128-4x-ov.tz2"
)

if not exist "C:\TopazMirror\v1\trf-v1-fp16-128x128-4x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\trf-v1-fp16-128x128-4x-ox.tz2" "http://models.topazlabs.com/v1/trf-v1-fp16-128x128-4x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\trf-v1-fp32-128x128-2x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\trf-v1-fp32-128x128-2x-ox.tz2" "http://models.topazlabs.com/v1/trf-v1-fp32-128x128-2x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\trf-v1-fp32-128x128-4x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\trf-v1-fp32-128x128-4x-ox.tz2" "http://models.topazlabs.com/v1/trf-v1-fp32-128x128-4x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\trfn-v1-fp16-512x512-1x-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\trfn-v1-fp16-512x512-1x-ov.tz2" "http://models.topazlabs.com/v1/trfn-v1-fp16-512x512-1x-ov.tz2"
)

if not exist "C:\TopazMirror\v1\trfn-v1-fp16-512x512-1x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\trfn-v1-fp16-512x512-1x-ox.tz2" "http://models.topazlabs.com/v1/trfn-v1-fp16-512x512-1x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\trfn-v1-fp32-512x512-1x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\trfn-v1-fp32-512x512-1x-ox.tz2" "http://models.topazlabs.com/v1/trfn-v1-fp32-512x512-1x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\txtdtx-v1-fp16-640x960-1x-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\txtdtx-v1-fp16-640x960-1x-ox.tz2" "http://models.topazlabs.com/v1/txtdtx-v1-fp16-640x960-1x-ox.tz2"
)

if not exist "C:\TopazMirror\v1\txtdtx-v1-fp16-640x960-1x-rev2-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\txtdtx-v1-fp16-640x960-1x-rev2-ox.tz2" "http://models.topazlabs.com/v1/txtdtx-v1-fp16-640x960-1x-rev2-ox.tz2"
)

if not exist "C:\TopazMirror\v1\wbc-v1-fp16-128x128-ov.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\wbc-v1-fp16-128x128-ov.tz2" "http://models.topazlabs.com/v1/wbc-v1-fp16-128x128-ov.tz2"
)

if not exist "C:\TopazMirror\v1\wbc-v1-fp16-128x128-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\wbc-v1-fp16-128x128-ox.tz2" "http://models.topazlabs.com/v1/wbc-v1-fp16-128x128-ox.tz2"
)

if not exist "C:\TopazMirror\v1\wbc-v1-fp32-128x128-ox.tz2" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\wbc-v1-fp32-128x128-ox.tz2" "http://models.topazlabs.com/v1/wbc-v1-fp32-128x128-ox.tz2"
)

if not exist "C:\TopazMirror\v1\WhiteBalanceData-v2.bin" (
    curl -L --fail --retry 3 -o "C:\TopazMirror\v1\WhiteBalanceData-v2.bin" "http://models.topazlabs.com/v1/WhiteBalanceData-v2.bin"
)

echo Done.
pause
