@echo off

set PYTHON=
set GIT=
set VENV_DIR=
set COMMANDLINE_ARGS=--theme=dark

@REM Uncomment following code to reference an existing A1111 checkout.
 set A1111_HOME=D:/sd-webui-aki-v4.7/sd-webui-aki-v4.7
@REM
 set VENV_DIR=%A1111_HOME%/venv
 set COMMANDLINE_ARGS=%COMMANDLINE_ARGS% ^
  --ckpt-dir %A1111_HOME%/models/Stable-diffusion ^
  --hypernetwork-dir %A1111_HOME%/models/hypernetworks ^
  --embeddings-dir %A1111_HOME%/embeddings ^
  --lora-dir %A1111_HOME%/models/Lora ^
  --controlnet-dir %A1111_HOME%/models/ControlNet ^
  --vae-dir %A1111_HOME%/models/VAE
call webui.bat
