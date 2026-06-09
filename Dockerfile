# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.8.4-base

# copy all input data (like images or videos) into comfyui (uncomment and adjust if needed)
# COPY input/ /comfyui/input/

# user-provided inputs override the auto-generated placeholders above.
RUN wget --progress=dot:giga -O '/comfyui/input/ltx23_flf2v_last_frame.png' "https://cool-anteater-319.convex.cloud/api/storage/100bdc20-3587-455a-9e0d-8fd086c74f3e"
RUN wget --progress=dot:giga -O '/comfyui/input/ltx23_flf2v_first_frame.png' "https://cool-anteater-319.convex.cloud/api/storage/ba1a6698-a996-4c41-be47-47ac1b2f2cb8"
