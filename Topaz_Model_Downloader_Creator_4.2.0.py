import subprocess

from pathlib import Path

VERSION = "v 4.2.0"
VERSION_FILE = VERSION.replace(" ", "_")

DEST = r"C:\TopazMirror\v1"
MIRROR_ROOT = r"C:\TopazMirror"
BASE_URL = "http://models.topazlabs.com/v1"
OUT_BAT = Path(fr"C:\TopazMirror\Topaz_Model_Downloader_{VERSION_FILE}.bat")

MIRROR_ROOT = Path(r"C:\TopazMirror")
DEST = MIRROR_ROOT / "v1"
TEST = MIRROR_ROOT / "_test"
TEST11 = MIRROR_ROOT / "1.1"
TRACK = DEST / "track"

# Create required folders if they don't already exist
for folder in (MIRROR_ROOT, DEST, TEST, TEST11, TRACK):
    folder.mkdir(parents=True, exist_ok=True)

FILES_RAW = r"""
‎apnb-v2-fp16-512x512-rev2-ox.tz2                                       
‎apnb-v2-fp32-512x512-ov.tz2                                            
‎apnb-v2-fp32-512x512-ox.tz2                                            
‎claae-v1-fp32-512x512-ov.tz2                                           
‎claae-v1-fp32-512x512-ox.tz2                                           
‎claa-v1-fp32-512x512-ov.tz                                             
‎claa-v1-fp32-512x512-ov.tz2                                            
‎claa-v1-fp32-512x512-ox.tz                                             
‎claa-v1-fp32-512x512-ox.tz2                                            
‎clc-v2-fp32-512x512-ov.tz2                                             
‎clc-v3-fp16-512x512-ox.tz2                                             
‎clc-v3-fp32-512x512-ox.tz2                                             
‎daclip-v1-fp32-224x224-1x-ov.tz                                        
‎daclip-v3-fp16-256x256-rev1-ox.tz2                                     
‎daclip-v3-fp32-256x256-ox.tz2                                          
‎default_prompt.bin                                                     
‎dnt_beta-v5-fp32-512x512-ov.tz2                                        
‎dnt_beta-v5-fp32-512x512-ox.tz2                                        
‎draw_linear-v1-fp32-512x512-ov.tz2                                     
‎draw_linear-v1-fp32-512x512-ox.tz2                                     
‎drw_native-v1-fp16-512x512-ov.tz2                                      
‎drw_native-v1-fp32-512x512-ox.tz2                                      
‎drw_standard-v1-fp16-512x512-ov.tz2                                    
‎drw_standard-v1-fp32-512x512-ox.tz2                                    
‎dswn_dec-v1-fp32-128x128.onnx.data                                     
‎dswn_dec-v1-fp32-128x128-ox.tz2                                        
‎dswn_dit-v1-fp16-128x128-rev1.onnx.data                                
‎dswn_dit-v1-fp16-128x128-rev1-ox.tz2                                   
‎dswn_enc-v1-fp32-1024x1024.onnx.data                                   
‎dswn_enc-v1-fp32-1024x1024-ox.tz2                                      
‎expog-v1-fp16-512x512-1x-ov.tz2                                        
‎expog-v1-fp16-512x512-1x-ox.tz2                                        
‎expoi-v1-fp32-256x256-1x-ov.tz2                                        
‎expoi-v1-fp32-256x256-1x-ox.tz2                                        
‎gclc-v1-fp16-96x96-2x-ov.tz2                                           
‎gclc-v1-fp16-96x96-4x-ov.tz2                                           
‎gclc-v1-fp16-128x128-2x-ov.tz                                          
‎gclc-v1-fp16-128x128-2x-ov.tz2                                         
‎gclc-v1-fp16-128x128-4x-ov.tz                                          
‎gclc-v1-fp16-128x128-4x-ov.tz2                                         
‎gclc-v1-fp16-192x192-2x-ov.tz                                          
‎gclc-v1-fp16-192x192-2x-ov.tz2                                         
‎gclc-v1-fp16-192x192-4x-ov.tz                                          
‎gclc-v1-fp16-192x192-4x-ov.tz2                                         
‎gclc-v1-fp32-96x96-2x-ox.tz2                                           
‎gclc-v1-fp32-96x96-4x-ox.tz2                                           
‎gclc-v1-fp32-128x128-2x-ox.tz                                          
‎gclc-v1-fp32-128x128-2x-ox.tz2                                         
‎gclc-v1-fp32-128x128-4x-ox.tz                                          
‎gclc-v1-fp32-128x128-4x-ox.tz2                                         
‎gclc-v1-fp32-192x192-1x-ov.tz                                          
‎gclc-v1-fp32-192x192-1x-ov.tz2                                         
‎gclc-v1-fp32-192x192-1x-ox.tz2                                         
‎gclc-v1-fp32-192x192-2x-ov.tz                                          
‎gclc-v1-fp32-192x192-2x-ov.tz2                                         
‎gclc-v1-fp32-192x192-2x-ox.tz2                                         
‎gclc-v1-fp32-192x192-4x-ov.tz                                          
‎gclc-v1-fp32-192x192-4x-ov.tz2                                         
‎gclc-v1-fp32-192x192-4x-ox.tz2                                         
‎gde_ap-v1-fp16-64x64-rev2-ox.tz2                                       
‎gde_ap-v1-fp32-64x64-ov.tz                                             
‎gde-v1-fp32-192x192-1x-ov.tz                                           
‎gde-v1-fp32-192x192-1x-ov.tz2                                          
‎gde-v1-fp32-192x192-2x-ov.tz                                           
‎gde-v1-fp32-192x192-2x-ov.tz2                                          
‎gde-v1-fp32-192x192-4x-ov.tz                                           
‎gde-v1-fp32-192x192-4x-ov.tz2                                          
‎gde-v2-fp32-192x192-1x-ox.tz2                                          
‎gde-v2-fp32-192x192-2x-ox.tz2                                          
‎gde-v2-fp32-192x192-4x-ox.tz2                                          
‎gendet-v1-fp32-256x256-1x-ov.tz                                        
‎gendet-v1-fp32-256x256-1x-ox.tz                                        
‎gfclc-v1-fp32-512x512-ov-11.tz                                         
‎gfclc-v1-fp32-512x512-ov-11.tz2                                        
‎gffm-v1-fp32-512x512-ov.tz2                                            
‎gffm-v1-fp32-512x512-ox.tz2                                            
‎gfg-v1-fp16-512x512-ov.tz2                                             
‎gfg-v1-fp32-512x512-ox.tz2                                             
‎gfpf-v1-fp16-48x48-ov.tz2                                              
‎gfpf-v1-fp32-48x48-ox.tz2                                              
‎gfp-l-v1-fp32-2048x2048-ov.tz2                                         
‎gfp-l-v1-fp32-2048x2048-ox.tz2                                         
‎gfp-s-v1-fp32-1024x1024-ov.tz2                                         
‎gfp-s-v1-fp32-1024x1024-ox.tz2                                         
‎gfrfn-v3-fp32-1024x1024-ox.tz2                                         
‎gfrf-v2-fp16-1024x1024-ov.tz                                           
‎gfrf-v2-fp16-1024x1024-ov.tz2                                          
‎gfrf-v2-fp32-1024x1024-ox.tz                                           
‎gfrf-v2-fp32-1024x1024-ox.tz2                                          
‎gfrg-v3-fp16-512x512-ov.tz                                             
‎gfrg-v3-fp16-512x512-ov.tz2                                            
‎gfrg-v3-fp32-512x512-ox.tz                                             
‎gfrg-v3-fp32-512x512-ox.tz2                                            
‎ggi-v1-fp32-192x192-2x-ov.tz2                                          
‎ggi-v1-fp32-192x192-4x-ov.tz2                                          
‎ggi-v2-fp32-192x192-2x-ox.tz2                                          
‎ggi-v2-fp32-192x192-4x-ox.tz2                                          
‎ggn_ap-v2-fp16-128x128-ov.tz2                                          
‎ggn_ap-v2-fp16-128x128-ox.tz2                                          
‎ggn_ap-v2-fp16-128x128-rev2-ox.tz2                                     
‎ggn_ap-v2-fp16-512x512-rev2-ox.tz2                                     
‎ggnv2-v3-fp16-128x128-2x-ov.tz                                         
‎ggnv2-v3-fp16-128x128-2x-ox.tz                                         
‎ggnv2-v3-fp16-128x128-2x-rev2-ov.tz2                                   
‎ggnv2-v3-fp16-128x128-4x-ov.tz                                         
‎ggnv2-v3-fp16-128x128-4x-ox.tz                                         
‎ggnv2-v3-fp16-128x128-4x-rev2-ov.tz2                                   
‎ggnv2-v3-fp32-128x128-2x-ox.tz2                                        
‎ggnv2-v3-fp32-128x128-4x-ox.tz2                                        
‎ggn-v3-fix-fp16-128x128-2x-ox.tz2                                      
‎ggn-v3-fp16-128x128-2x-ov.tz2                                          
‎ggn-v3-fp16-128x128-4x-ov.tz2                                          
‎ggn-v3-fp16-128x128-4x-ox.tz2                                          
‎ggn-v3-fp32-128x128-2x-ox.tz2                                          
‎ggn-v3-fp32-128x128-4x-ox.tz2                                          
‎ghc-v2-fp32-192x192-1x-ov.tz                                           
‎ghc-v2-fp32-192x192-1x-ov.tz2                                          
‎ghc-v2-fp32-192x192-1x-ox.tz2                                          
‎ghc-v2-fp32-192x192-2x-ov.tz                                           
‎ghc-v2-fp32-192x192-2x-ov.tz2                                          
‎ghc-v2-fp32-192x192-2x-ox.tz2                                          
‎ghc-v2-fp32-192x192-4x-ov.tz                                           
‎ghc-v2-fp32-192x192-4x-ov.tz2                                          
‎ghc-v2-fp32-192x192-4x-ox.tz2                                          
‎ghq-v1-fix-fp16-96x96-2x-ox.tz2                                        
‎ghq-v1-fp16-96x96-2x-ov.tz2                                            
‎ghq-v1-fp16-96x96-4x-ov.tz2                                            
‎ghq-v1-fp16-96x96-4x-ox.tz2                                            
‎ghq-v1-fp32-96x96-2x-ox.tz2                                            
‎ghq-v1-fp32-96x96-4x-ox.tz2                                            
‎ghqv2_ldn-v1-fp16-128x128-2x-ov.tz                                     
‎ghqv2_ldn-v1-fp16-128x128-2x-ox.tz                                     
‎ghqv2_ldn-v1-fp16-128x128-2x-rev2-ov.tz2                               
‎ghqv2_ldn-v1-fp16-128x128-4x-ov.tz                                     
‎ghqv2_ldn-v1-fp16-128x128-4x-ox.tz                                     
‎ghqv2_ldn-v1-fp16-128x128-4x-rev2-ov.tz2                               
‎ghqv2_ldn-v1-fp32-128x128-2x-ox.tz2                                    
‎ghqv2_ldn-v1-fp32-128x128-4x-ox.tz2                                    
‎ghqv2-v1-fp16-128x128-2x-ov.tz                                         
‎ghqv2-v1-fp16-128x128-2x-ox.tz                                         
‎ghqv2-v1-fp16-128x128-2x-rev2-ov.tz2                                   
‎ghqv2-v1-fp16-128x128-4x-ov.tz                                         
‎ghqv2-v1-fp16-128x128-4x-ox.tz                                         
‎ghqv2-v1-fp16-128x128-4x-rev2-ov.tz2                                   
‎ghqv2-v1-fp32-128x128-2x-ox.tz2                                        
‎ghqv2-v1-fp32-128x128-4x-ox.tz2                                        
‎ghqv3_cache-v2-fp16-224x224-ox.tz2                                     
‎ghqv3-v2-fp16-512x512-ox.tz2                                           
‎ghqv3-v2-fp16-512x512-rev1-ort.tz2                                     
‎ghqv3-v2-fp16-512x512-rev1-ox.tz2                                      
‎gmp-v1-fp32-192x192-2x-ov.tz2                                          
‎gmp-v1-fp32-192x192-4x-ov.tz2                                          
‎gmp-v2-fp32-192x192-2x-ox.tz2                                          
‎gmp-v2-fp32-192x192-4x-ox.tz2                                          
‎gmpv2-v13-fp16-192x192-2x-ov.tz                                        
‎gmpv2-v13-fp16-192x192-2x-ov.tz2                                       
‎gmpv2-v13-fp16-192x192-4x-ov.tz                                        
‎gmpv2-v13-fp16-192x192-4x-ov.tz2                                       
‎gmpv2-v13-fp32-192x192-2x-ox.tz2                                       
‎gmpv2-v13-fp32-192x192-4x-ox.tz2                                       
‎iisa-v1-fp16-1024x1024-rev1-ox.tz2                                     
‎iisa-v1-fp32-ox.tz2                                                    
‎iri-v1-fp32-800x800-ov.tz                                              
‎iri-v1-fp32-800x800-ov.tz2                                             
‎iri-v1-fp32-800x800-ox.tz                                              
‎irwn_dec-v2-fp32-64x64.onnx.data                                       
‎irwn_dec-v2-fp32-64x64-ox.tz2                                          
‎irwn_dit-v2-fp16-128x128.onnx.data                                     
‎irwn_dit-v2-fp16-128x128-ox.tz2                                        
‎irwn_dit-v2-fp32-128x128.onnx.data                                     
‎irwn_dit-v2-fp32-128x128-ox.tz2                                        
‎irwn_enc-v2-fp32-512x512.onnx.data                                     
‎irwn_enc-v2-fp32-512x512-ox.tz2                                        
‎isoa-v1-fp32-512x512-ov.tz2                                            
‎isoa-v1-fp32-512x512-ox.tz2                                            
‎isob-v1-fp32-512x512-ov.tz2                                            
‎isob-v1-fp32-512x512-ox.tz2                                            
‎ldclc-v1-fp16-64x64-ov.tz                                              
‎ldclc-v1-fp16-64x64-ov.tz2                                             
‎ldclc-v1-fp16-64x64-ox.tz                                              
‎ldclc-v1-fp16-64x64-ox.tz2                                             
‎ldclc-v1-fp16-96x96-ox.tz2                                             
‎ldclc-v1-fp32-64x64-ox.tz2                                             
‎ldd21-v2-fp16-64x64-ov.tz                                              
‎ldd21-v2-fp16-64x64-ov.tz2                                             
‎ldd21-v2-fp32-64x64-ox.tz2                                             
‎lddv21-v1-fp16-64x64-ov.tz                                             
‎lddv21-v1-fp16-64x64-ov.tz2                                            
‎lddv21-v1-fp32-64x64-ox.tz2                                            
‎lde21-v1-fp16-512x512-ov.tz                                            
‎lde21-v1-fp16-512x512-ov.tz2                                           
‎lde21-v1-fp32-512x512-ox.tz2                                           
‎ldu21-v2-fp16-64x64-ov.tz                                              
‎ldu21-v2-fp16-64x64-ov.tz2                                             
‎ldu21-v2-fp32-64x64-rev1.pb                                            
‎ldu21-v2-fp32-64x64-rev1-ox.tz2                                        
‎lensblur-v3-fp32-512x512-ov.tz                                         
‎lensblur-v3-fp32-512x512-ov.tz2                                        
‎lensblur-v3-fp32-512x512-ox.tz2                                        
‎liting_det-v1-fp16-128x128-ox.tz2                                      
‎liting_det-v1-fp16-128x128-rev2-ox.tz2                                 
‎lmx-v1-fp16-512x512-ov.tz2                                             
‎lmx-v1-fp32-512x512-ox.tz2                                             
‎mobileclip2s2_age_of_photo_classifier.bin                              
‎mobileclip2s2_main_subject_classifier.bin                              
‎neg_emb.yaml                                                           
‎noise_det-v1-fp16-128x128-1x-ox.tz2                                    
‎rxl_decoder0-v1-fp32-96x96-ox.tz2                                      
‎rxl_decoder1-v1-fp32-120x120-ox.tz2                                    
‎rxl_embed-v1-fp16-77x768-ox.tz2                                        
‎rxl_encoder0-v1-fp32-768x768-ox.tz2                                    
‎rxl_encoder1-v1-fp32-960x960-ox.tz2                                    
‎rxl_merges.txt                                                         
‎rxl_unet0-v2-fp16.pb                                                   
‎rxl_unet0-v2-fp16-ox.tz2                                               
‎rxl_unet1-v2-fp16.pb                                                   
‎rxl_unet1-v2-fp16-ox.tz2                                               
‎rxl_vocab.txt                                                          
‎s_mask_l_flexible-v2-fp16-320x320-ov.tz2                               
‎s_mask_l_flexible-v2-fp16-320x320-rev2-ox.tz2                          
‎samdec-v1-fp16-1024x1024-ov.tz                                         
‎samdec-v1-fp16-1024x1024-ov.tz2                                        
‎samdec-v1-fp32-1024x1024-ox.tz                                         
‎samdec-v1-fp32-1024x1024-ox.tz2                                        
‎samenc-v1-fp16-1024x1024-ov.tz                                         
‎samenc-v1-fp16-1024x1024-ov.tz2                                        
‎samenc-v1-fp32-1024x1024-ox.tz                                         
‎samenc-v1-fp32-1024x1024-ox.tz2                                        
‎sddustdec-v1-fp16-64x64-ov.tz2                                         
‎sddustdec-v2-fp16-64x64-ov.tz                                          
‎sddustdec-v2-fp16-64x64-ox.tz                                          
‎sddustenc-v1-fp16-512x512-ov.tz2                                       
‎sddustenc-v2-fp16-512x512-ov.tz                                        
‎sddustenc-v2-fp16-512x512-ox.tz                                        
‎sddustunet-v1-fp16-64x64-ov.tz2                                        
‎sddustunet-v2-fp16-64x64-ov.tz                                         
‎sddustunet-v2-fp16-64x64-ox.tz                                         
‎sdi_dec-v2-fp16-512x512-ov.tz2                                         
‎sdi_dec-v2-fp16-512x512-ox.tz2                                         
‎sdi_dec-v4-fp16-512x512-ox.tz2                                         
‎sdi_embed0.bin                                                         
‎sdi_enc-v2-fp16-512x512-ov.tz2                                         
‎sdi_enc-v2-fp16-512x512-ox.tz2                                         
‎sdi_enc-v4-fp16-512x512-ox.tz2                                         
‎sdi_imdn-v1-fp32-96x96-2x-ov.tz2                                       
‎sdi_unet-v4-fp16-512x512-ort.tz2                                       
‎sdi_unet-v4-fp16-512x512-ov.tz2                                        
‎sdi_unet-v5-fp16-512x512-ox.tz2                                        
‎slb-v1-fp32-512x512-ov.tz                                              
‎slb-v1-fp32-512x512-ov.tz2                                             
‎slb-v1-fp32-512x512-ox.tz                                              
‎sll-v1-fp32-512x512-ov.tz                                              
‎sll-v1-fp32-512x512-ov.tz2                                             
‎sll-v1-fp32-512x512-ox.tz                                              
‎sll-v1-fp32-512x512-ox.tz2                                             
‎slsp_ap-v2-fp16-512x512-rev2-ox.tz2                                    
‎slsp_ap-v2-fp32-512x512-ox.tz2                                         
‎slsp_ap-v3-fp32-512x512-ov.tz2                                         
‎slsp-v3-fp32-512x512-ov.tz2                                            
‎slsp-v3-fp32-512x512-ox.tz2                                            
‎smp_flexible-v2-fp16-320x320-ov.tz2                                    
‎smp_flexible-v2-fp16-320x320-ox.tz2                                    
‎sms_new-v3-fp16-320x320-ov.tz2                                         
‎sms_new-v3-fp16-320x320-ox.tz2                                         
‎sms_new-v3-fp16-320x320-rev2-ox.tz2                                    
‎spfcdec-v1-fp16-64x64-ov.tz                                            
‎spfcdec-v1-fp16-64x64-ov.tz2                                           
‎spfcdec-v1-fp32-64x64-ox.tz2                                           
‎spfcdit-v1-fp16-64x64-ov.tz                                            
‎spfcdit-v1-fp16-64x64-ov.tz2                                           
‎spfcdit-v1-fp32-64x64-ox.tz2                                           
‎spfcenc-v1-fp16-512x512-ov.tz                                          
‎spfcenc-v1-fp16-512x512-ov.tz2                                         
‎spfcenc-v1-fp32-512x512-ox.tz2                                         
‎ssddec0_0-v1-fp16-64x64-ov.tz                                          
‎ssddec0_0-v1-fp16-64x64-ov.tz2                                         
‎ssddec0_0-v1-fp16-64x64-ox.tz                                          
‎ssddec0_0-v1-fp32-64x64-ox.tz2                                         
‎ssddec0_5-v1-fp16-64x64-ov.tz                                          
‎ssddec0_5-v1-fp16-64x64-ov.tz2                                         
‎ssddec0_5-v1-fp16-64x64-ox.tz                                          
‎ssddec0_5-v1-fp32-64x64-ox.tz2                                         
‎ssddec1_0-v1-fp16-64x64-ov.tz                                          
‎ssddec1_0-v1-fp16-64x64-ov.tz2                                         
‎ssddec1_0-v1-fp16-64x64-ox.tz                                          
‎ssddec1_0-v1-fp32-64x64-ox.tz2                                         
‎ssdenc-sharpen-v1-fp16-512x512-ov.tz                                   
‎ssdenc-sharpen-v1-fp16-512x512-ov.tz2                                  
‎ssdenc-sharpen-v1-fp16-512x512-ox.tz                                   
‎ssdenc-v1-fp16-512x512-ov.tz2                                          
‎ssdenc-v1-fp16-512x512-ox.tz2                                          
‎ssdunet-sharpen-v1-fp16-64x64-ov.tz                                    
‎ssdunet-sharpen-v1-fp16-64x64-ov.tz2                                   
‎ssdunet-sharpen-v1-fp16-64x64-ox.tz                                    
‎ssdunet-v1-fp16-64x64-ov.tz2                                           
‎ssdunet-v1-fp32-64x64-rev1.onnx.data                                   
‎ssdunet-v1-fp32-64x64-rev1-ox.tz2                                      
‎sstd_ahres-v1-fp32-512x512-ox.tz2                                      
‎sstd_phres-v1-fp32-512x512-ox.tz2                                      
‎sstd-v2-fp32-512x512-ov.tz2                                            
‎sstd-v2-fp32-512x512-ox.tz2                                            
‎sstg-v1-fp32-512x512-ov.tz2                                            
‎sstg-v1-fp32-512x512-ox.tz2                                            
‎stdmax-v1-fp16-192x192-ov.tz2                                          
‎stdmax-v1-fp16-192x192-ox.tz2                                          
‎tpn_dec-v1-fp16-64x64-ox.tz2                                           
‎tpn_embeds.bin                                                         
‎tpn_enc-v1-fp16-512x512-ox.tz2                                         
‎tpn_unet-v1-fp16-64x64-ox.tz2                                          
‎trfn-v1-fp16-512x512-1x-ov.tz2                                         
‎trfn-v1-fp16-512x512-1x-ox.tz2                                         
‎trfn-v1-fp32-512x512-1x-ox.tz2                                         
‎trf-v1-fp16-128x128-2x-ov.tz2                                          
‎trf-v1-fp16-128x128-2x-ox.tz2                                          
‎trf-v1-fp16-128x128-4x-ov.tz2                                          
‎trf-v1-fp16-128x128-4x-ox.tz2                                          
‎trf-v1-fp32-128x128-2x-ox.tz2                                          
‎trf-v1-fp32-128x128-4x-ox.tz2                                          
‎txtdtx-v1-fp16-640x960-1x-ox.tz                                        
‎txtdtx-v1-fp16-640x960-1x-ox.tz2                                       
‎txtdtx-v1-fp16-640x960-1x-rev2-ox.tz2                                  
‎wbc-v1-fp16-128x128-ov.tz2                                             
‎wbc-v1-fp16-128x128-ox.tz2                                             
‎wbc-v1-fp32-128x128-ox.tz2                                             
‎WhiteBalanceData-v2.bin                                                
"""

# Build the embedded filename list
FILES = []

for line in FILES_RAW.splitlines():
    name = (
        line.strip()
            .replace("\u200e", "")   # Remove hidden Left-to-Right Mark
            .replace("\ufeff", "")   # Remove UTF-8 BOM if present
    )

    if name:
        FILES.append(name)

# Sort alphabetically and remove duplicates
files = sorted(set(FILES), key=str.lower)
total = len(files)
def safe_echo(text: str) -> str:
    return (
        text.replace("^", "^^")
            .replace("&", "^&")
            .replace("|", "^|")
            .replace("<", "^<")
            .replace(">", "^>")
            .replace("(", "^(")
            .replace(")", "^)")
    )

with OUT_BAT.open("w", encoding="utf-8", newline="\r\n") as f:
    f.write("@echo off\n")
    f.write(f"title Topaz Model Downloader - {VERSION}\n")
    f.write("color 0A\n")
    f.write("setlocal DisableDelayedExpansion\n")
    f.write('set "STARTTIME=%TIME%"\n')
    f.write(f'set "DEST={DEST}"\n')
    f.write(f'set "MIRROR_ROOT={MIRROR_ROOT}"\n')
    f.write(f'set "BASE_URL={BASE_URL}"\n\n')

    f.write("echo ===========================================\n")
    f.write("echo         Topaz Model Downloader\n")
    f.write(f"echo             {VERSION}\n")
    f.write("echo ===========================================\n")
    f.write("echo.\n\n")

    f.write('if not exist "%MIRROR_ROOT%" mkdir "%MIRROR_ROOT%"\n')
    f.write('if not exist "%DEST%" mkdir "%DEST%"\n')
    f.write('if not exist "%MIRROR_ROOT%\\_test" mkdir "%MIRROR_ROOT%\\_test"\n')
    f.write('if not exist "%MIRROR_ROOT%\\1.1" mkdir "%MIRROR_ROOT%\\1.1"\n')
    f.write('if not exist "%DEST%\\track" mkdir "%DEST%\\track"\n\n')

    f.write('if not exist "%MIRROR_ROOT%\\_test\\models-bal-test.txt" echo Connected!>"%MIRROR_ROOT%\\_test\\models-bal-test.txt"\n')
    f.write('if not exist "%MIRROR_ROOT%\\1.1\\test.txt" echo Connected!>"%MIRROR_ROOT%\\1.1\\test.txt"\n')
    f.write('if not exist "%DEST%\\track\\OK.txt" echo OK>"%DEST%\\track\\OK.txt"\n\n')

    f.write('cd /d "%DEST%"\n')
    f.write("echo Download folder:\n")
    f.write("echo %CD%\n")
    f.write("echo.\n\n")

    f.write("echo Checking network...\n")
    f.write('netsh interface show interface | findstr /i "Connected" >nul\n')
    f.write("if errorlevel 1 goto NO_ADAPTER\n")
    f.write('curl --silent --head --connect-timeout 5 "%BASE_URL%/" >nul 2>&1\n')
    f.write("if errorlevel 1 goto NO_INTERNET\n")
    f.write("echo [ONLINE] Internet detected.\n")
    f.write("goto START_DOWNLOAD\n\n")

    f.write(":NO_ADAPTER\n")
    f.write("echo [OFFLINE] No Ethernet or Wi-Fi adapter connected.\n")
    f.write("goto START_DOWNLOAD\n\n")

    f.write(":NO_INTERNET\n")
    f.write("echo [OFFLINE] Adapter connected, but Internet unavailable.\n")
    f.write("goto START_DOWNLOAD\n\n")

    f.write(":START_DOWNLOAD\n")
    f.write("echo.\n")
    f.write("echo ===========================================\n")
    f.write("echo          Network check complete.\n")
    f.write("echo      Starting download in 3 seconds...\n")
    f.write("echo ===========================================\n")
    f.write("timeout /t 3 /nobreak >nul\n")
    f.write("echo.\n\n")

    for i, name in enumerate(files, start=1):
        label = f"SKIP_{i:04d}"

        f.write(f"echo [{i}/{total}] {safe_echo(name)}\n")
        f.write(f'if exist "%DEST%\\{name}" goto {label}\n')
        f.write(f'curl -L --fail --retry 3 -o "%DEST%\\{name}" "%BASE_URL%/{name}"\n')
        f.write(f"goto NEXT_{i:04d}\n")
        f.write(f":{label}\n")
        f.write("echo Already exists. Skipping.\n")
        f.write(f":NEXT_{i:04d}\n")
        f.write("echo.\n\n")
    f.write("echo.\n")
    f.write("echo ===========================================\n")
    f.write("echo           Missing File Report\n")
    f.write("echo ===========================================\n")
    f.write("set MISSING_COUNT=0\n")
    f.write("echo.\n")
    f.write('del "%MIRROR_ROOT%\\MissingFiles.txt" >nul 2>&1\n')

    for name in files:
        safe_name = safe_echo(name)
        f.write(f'if not exist "%DEST%\\{name}" (\n')
        f.write("    set /a MISSING_COUNT+=1\n")
        f.write(f"    echo    {safe_name}\n")
        f.write(f'    echo {safe_name}>>"%MIRROR_ROOT%\\MissingFiles.txt"\n')
        f.write(")\n")

    f.write("echo.\n")
    f.write('if "%MISSING_COUNT%"=="0" (\n')
    f.write("    echo All model files are present.\n")
    f.write('    echo All model files are present.>"%MIRROR_ROOT%\\MissingFiles.txt"\n')
    f.write(") else (\n")
    f.write("    echo ===========================================\n")
    f.write("    echo Missing Files: %MISSING_COUNT%\n")
    f.write('    echo Missing list saved to: "%MIRROR_ROOT%\\MissingFiles.txt"\n')
    f.write("    echo ===========================================\n")
    f.write(")\n")
    f.write("echo.\n")

    f.write(f'if not exist "%DEST%\\{name}" (\n')
    f.write("    set /a MISSING_COUNT+=1\n")
    f.write(f"    echo    {safe_name}\n")
    f.write(")\n")

    f.write("echo.\n")
    f.write('if "%MISSING_COUNT%"=="0" (\n')
    f.write("    echo All model files are present.\n")
    f.write(") else (\n")
    f.write("    echo ===========================================\n")
    f.write("    echo Missing Files: %MISSING_COUNT%\n")
    f.write("    echo ===========================================\n")
    f.write(")\n")
    f.write("echo.\n")

    f.write("echo ===========================================\n")
    f.write("echo Started : %STARTTIME%\n")
    f.write("echo Finished: %TIME%\n")
    f.write(f"echo Files   : {total}\n")
    f.write("echo ===========================================\n")
    f.write("echo   Topaz Model Downloader Complete\n")
    f.write(f"echo           {VERSION}\n")
    f.write("echo     Folder: %CD%\n")
    f.write("echo.\n")
    f.write("echo    Topaz-Offline-Download-Server\n")
    f.write("echo.\n")
    f.write("echo           Preservation\n")
    f.write("echo.\n")
    f.write("echo       Thank Github 91ajames\n")
    f.write("echo ===========================================\n")
    f.write("echo.\n")
    f.write('set /p STARTSERVER=Start the Topaz Mirror Server now? (Y/N): \n')
    f.write('if /I "%STARTSERVER%"=="Y" (\n')
    f.write('    echo.\n')
    f.write('    echo Starting Topaz Mirror Server...\n')
    f.write('    echo.\n')
    f.write(r'   echo Please modify your C:\Windows\System32\Drivers\etc\hosts...' + "\n")
    f.write('    echo.\n')
    f.write('    echo 192.168.25.1 models.topazlabs.com\n')
    f.write('    echo 192.168.25.1 et.topazlabs.com\n')
    f.write('    echo 192.168.25.1 image-models.topazlabs.com\n')
    f.write('    echo 192.168.25.1 models-r2.topazlabs.com\n')
    f.write('    echo 192.168.25.1 models-bal.topazlabs.com\n')
    f.write('    echo.\n')
    f.write('    echo Notice: 192.168.25.1 change if necessarily.\n')
    f.write('    echo.\n')
    f.write('    cd /d "C:\\TopazMirror"\n')
    f.write('    py -3.14 -m http.server 80\n')
    f.write(')\n')
    f.write("echo.\n")
    f.write("pause\n")

print(f"Created: {OUT_BAT}")
print(f"Files added: {total}")

try:
    run_now = input("\nRun the generated BAT now? (Y/N): ").strip().lower()

    if run_now in ("y", "yes"):
        print("\nLaunching BAT...")
        subprocess.run(f'cmd /k "{OUT_BAT}"', shell=True)
    else:
        print("\nBAT was not launched.")

except Exception as e:
    print("\nERROR while trying to launch BAT:")
    print(e)

input("\nPress Enter to exit...")
