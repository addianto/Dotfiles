# Ollama

My personalised Ollama configuration and models.

## Configuration

I use the default configuration, except:

- `OLLAMA_FLASH_ATTENTION` is set to 1 on a machine with an Nvidia GPU.
- `OLLAMA_HOST` is set to a value other than `127.0.0.1:11434` on a Raspberry Pi.

See [`config.go`](https://github.com/ollama/ollama/blob/v0.5.7/envconfig/config.go) for the list of variables.

## Models

Currently, I use the following models:

- [Llama 3.2 Abliterated 3B](./models/llama-3.2-abliterated-3b-personal.Modelfile)
- [DeepSeek-R1 1.5B Qwen Distilled](./models/deepseek-r1-1.5b-qwen-distill-personal.Modelfile)
- [Sarashina 2.1 1B](https://huggingface.co/sbintuitions/sarashina2.1-1b)
- [Qwen 2.5 Coder Abliterated 1.5B](./models/qwen2.5-coder-abliterated-1.5b-personal.Modelfile)
- SmolLM2 1.7B
- Snowflake Arctic Embed 2 568M
