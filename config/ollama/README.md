# Ollama

Configuration done through environment variables.
See: [`config.go`](https://github.com/ollama/ollama/blob/v0.5.7/envconfig/config.go) for the list of variables.

## Models

You can find the list of models I use in the [`models`](./models) directory.
I try to customise each model via `Modelfile` so it follows the recommended settings from the author.

## Build

```shell
ollama create \
    deepseek-r1:1.5b-qwen-distill-custom \
    --file ./config/ollama/models/deepseek-r1-1.5b-qwen-distill-custom.Modelfile \
    --quantize q8_0
```
