import type { ExtensionAPI } from "@earendil-works/pi-coding-agent";

export default function (pi: ExtensionAPI) {
  pi.registerProvider("deepinfra", {
    baseUrl: "https://api.deepinfra.com/v1/openai",
    apiKey: "$DEEPSEEK_API_KEY",
    api: "openai-completions",
    models: [
      {
        id: "deepseek-ai/DeepSeek-V3.1",
        name: "DeepSeek V3.1 (DeepInfra)",
        reasoning: false,
        input: ["text"],
        cost: { input: 0.27, output: 1.1, cacheRead: 0.07, cacheWrite: 0 },
        contextWindow: 131072,
        maxTokens: 32768,
      },
    ],
  });
}
