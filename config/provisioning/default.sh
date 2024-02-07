#!/bin/false

# This file will be sourced in init.sh

# https://raw.githubusercontent.com/ai-dock/comfyui/main/config/provisioning/default.sh


NODES=(
    "https://github.com/ltdrdata/ComfyUI-Manager"
    "https://github.com/Kosinkadink/ComfyUI-Advanced-ControlNet"
    "https://github.com/Kosinkadink/ComfyUI-AnimateDiff-Evolved"
    "https://github.com/pythongosssss/ComfyUI-Custom-Scripts"
    "https://github.com/Fannovel16/ComfyUI-Frame-Interpolation"
    "https://github.com/giriss/comfy-image-saver"
    "https://github.com/ltdrdata/ComfyUI-Impact-Pack"
    "https://github.com/ltdrdata/ComfyUI-Inspire-Pack"
    "https://github.com/kijai/ComfyUI-KJNodes"
    "https://github.com/theUpsider/ComfyUI-Logic"
    "https://github.com/kijai/ComfyUI-Marigold"
    "https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite"
    "https://github.com/EllangoK/ComfyUI-post-processing-nodes"
    "https://github.com/Suzie1/ComfyUI_Comfyroll_CustomNodes"
    "https://github.com/FizzleDorf/ComfyUI_FizzNodes"
    "https://github.com/BlenderNeko/ComfyUI_TiledKSampler"
    "https://github.com/ssitu/ComfyUI_UltimateSDUpscale"
    "https://github.com/kohya-ss/ControlNet-LLLite-ComfyUI"
    "https://github.com/AIrjen/OneButtonPrompt"
    "https://github.com/chrisgoringe/cg-use-everywhere"
    "https://github.com/BennyKok/comfyui-deploy"
    "https://github.com/LucianoCirino/efficiency-nodes-comfyui"
    "https://github.com/BadCafeCode/masquerade-nodes-comfyui"
    "https://github.com/Stability-AI/stability-ComfyUI-nodes"
    "https://github.com/FlyingFireCo/tiled_ksampler"
    "https://github.com/WASasquatch/was-node-suite-comfyui"
)

CHECKPOINT_MODELS=(
    "https://huggingface.co/nanxiz/zcabnzh/resolve/main/basic_model.safetensors"
    "https://huggingface.co/nanxiz/zcabnzh/resolve/main/vivid_model.safetensors"
    "https://huggingface.co/nanxiz/zcabnzh/resolve/main/sdxlUnstableDiffusers_unyieldingGrimoire.safetensors"
)

LORA_MODELS=(
    "https://huggingface.co/nanxiz/zcabnzh/resolve/main/View360.safetensors"
    "https://huggingface.co/nanxiz/zcabnzh/resolve/main/MJ52.safetensors"
)

VAE_MODELS=(
    "https://huggingface.co/stabilityai/sdxl-vae/resolve/main/sdxl_vae.safetensors"
)

ESRGAN_MODELS=(
    "https://huggingface.co/FacehugmanIII/4x_foolhardy_Remacri/resolve/main/4x_foolhardy_Remacri.pth"
    "https://huggingface.co/Akumetsu971/SD_Anime_Futuristic_Armor/resolve/main/4x_NMKD-Siax_200k.pth"
)

CONTROLNET_MODELS=(
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_canny-fp16.safetensors"
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_depth-fp16.safetensors"
    "https://huggingface.co/kohya-ss/ControlNet-diff-modules/resolve/main/diff_control_sd15_depth_fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_hed-fp16.safetensors"
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_mlsd-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_normal-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_openpose-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_scribble-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_seg-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_canny-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_color-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_depth-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_keypose-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_openpose-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_seg-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_sketch-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_style-fp16.safetensors"
)

CUSTOM_NODE_LLLITE_MODELS=(
    "https://huggingface.co/nanxiz/zcabnzh/resolve/main/controlnetxlCNXL_bdsqlszMlsdV2.safetensors"
)

CUSTOM_NODE_ANIMATEDIFF_MODELS=(
    "https://huggingface.co/nanxiz/zcabnzh/resolve/main/v3_sd15_mm.ckpt"
)

### DO NOT EDIT BELOW HERE UNLESS YOU KNOW WHAT YOU ARE DOING ###

function provisioning_start() {
    DISK_GB_AVAILABLE=$(($(df --output=avail -m "${WORKSPACE}" | tail -n1) / 1000))
    DISK_GB_USED=$(($(df --output=used -m "${WORKSPACE}" | tail -n1) / 1000))
    DISK_GB_ALLOCATED=$(($DISK_GB_AVAILABLE + $DISK_GB_USED))
    provisioning_print_header
    provisioning_get_nodes
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/ckpt" \
        "${CHECKPOINT_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/lora" \
        "${LORA_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/controlnet" \
        "${CONTROLNET_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/vae" \
        "${VAE_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/esrgan" \
        "${ESRGAN_MODELS[@]}"
    provisioning_print_end
}

function provisioning_get_nodes() {
    for repo in "${NODES[@]}"; do
        dir="${repo##*/}"
        path="/opt/ComfyUI/custom_nodes/${dir}"
        requirements="${path}/requirements.txt"
        if [[ -d $path ]]; then
            if [[ ${AUTO_UPDATE,,} != "false" ]]; then
                printf "Updating node: %s...\n" "${repo}"
                ( cd "$path" && git pull )
                if [[ -e $requirements ]]; then
                    micromamba -n comfyui run ${PIP_INSTALL} -r "$requirements"
                fi
            fi
        else
            printf "Downloading node: %s...\n" "${repo}"
            git clone "${repo}" "${path}" --recursive
            if [[ -e $requirements ]]; then
                micromamba -n comfyui run ${PIP_INSTALL} -r "${requirements}"
            fi
            if [[ "${repo}" == "https://github.com/kohya-ss/ControlNet-LLLite-ComfyUI" ]]; then
                printf "Downloading additional model for LLLite node...\n"
                provisioning_get_models "${path}/models" "${CUSTOM_NODE_LLLITE_MODELS[@]}"
            fi
            if [[ "${repo}" == "https://github.com/Kosinkadink/ComfyUI-AnimateDiff-Evolved" ]]; then
                printf "Downloading additional model for Animatediff node...\n"
                provisioning_get_models "${path}/models" "${CUSTOM_NODE_ANIMATEDIFF_MODELS[@]}"
            fi
        fi
    done
}

function provisioning_get_models() {
    if [[ -z $2 ]]; then return 1; fi
    dir="$1"
    mkdir -p "$dir"
    shift
    if [[ $DISK_GB_ALLOCATED -ge $DISK_GB_REQUIRED ]]; then
        arr=("$@")
    else
        printf "WARNING: Low disk space allocation - Only the first model will be downloaded!\n"
        arr=("$1")
    fi
    
    printf "Downloading %s model(s) to %s...\n" "${#arr[@]}" "$dir"
    for url in "${arr[@]}"; do
        printf "Downloading: %s\n" "${url}"
        provisioning_download "${url}" "${dir}"
        printf "\n"
    done
}

function provisioning_print_header() {
    printf "\n##############################################\n#                                            #\n#          Provisioning container            #\n#                                            #\n#         This will take some time           #\n#                                            #\n# Your container will be ready on completion #\n#                                            #\n##############################################\n\n"
    if [[ $DISK_GB_ALLOCATED -lt $DISK_GB_REQUIRED ]]; then
        printf "WARNING: Your allocated disk size (%sGB) is below the recommended %sGB - Some models will not be downloaded\n" "$DISK_GB_ALLOCATED" "$DISK_GB_REQUIRED"
    fi
}

function provisioning_print_end() {
    printf "\nProvisioning complete:  Web UI will start now\n\n"
}

# Download from $1 URL to $2 file path
function provisioning_download() {
    wget -qnc --content-disposition --show-progress -e dotbytes="${3:-4M}" -P "$2" "$1"
}

provisioning_start