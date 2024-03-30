# This file is maintained automatically by "tofu init".
# Manual edits may be lost in future updates.

provider "registry.opentofu.org/fluxcd/flux" {
  version = "1.2.3"
  hashes = [
    "h1:9g+tHJeijC9yI1op8whBUe8DHaoxeaT3ZYEn0FarsL8=",
    "h1:joVUakPF4zLGPe4+qhbOnDG91GJs1E/uAzUovpGs1Vs=",
    "zh:00eb4c54146bfc1f4d22dfd14c0109728355424088d421392b28e0e5fd76b6a7",
    "zh:1578f9125456b8d8725522a5a938b228511855da9839c0d433ea3d7d29a7ea32",
    "zh:204bb373d864226a9cee53cdd4631f3c6122611ec7c9de78779e8c5a0b89a012",
    "zh:28ba62d652a1755472d3c75c8037c60c9f66f1f1d240ba8645df2a07ac31f11f",
    "zh:2b2de916cae64f0cd709d58e2e5da542a0da8ef28c60e98800321e14c2f9ab19",
    "zh:46600a48198fd8d72dd81bca51ccced8a91c5c3aa1e6cf01203f612d0d82515e",
    "zh:6977b9c2097119e7af8e8d4e3af48923aef3bbf440239bcecccdd2475c762ac9",
    "zh:77c82676c652a78428bb4f6e1468921b251333d08e30680a0932da67e9792ecf",
    "zh:99c23c73bab1d3b877d9fd43ea4854e672640c85c330b0275912533fc85b3235",
    "zh:9a73c5b59cb818fa1d4a8a0c701d05f88fba90f2e88819b3386883e3da5e5c7e",
    "zh:ad04f7d812a51bc39fd21248ab66baaa0cc5c48fe070486753fae8d4328df3c2",
    "zh:bf022ca127b58dfe2de80cd3cdf688cb3efc4a0b76309dabda74833ebdcb5087",
    "zh:dec151af5e7f4cc6b9ed38c81d368c57f761c01542b2dce13419ff4c8d928791",
    "zh:e7f59fab78cd75b0b8c0a556fa6cdd544cf17ae436f33e79f5706cb2761d0836",
  ]
}

provider "registry.opentofu.org/hashicorp/tls" {
  version = "4.0.5"
  hashes = [
    "h1:ILGm1+RP2+eIDc+YQ+xWgNX7Dcb9cD9OuvJHqUxtjmE=",
    "h1:LWGTWAUrC+/iTsNq0vxANvGOp+7Jnl4wAnSOW2Shqjc=",
    "zh:05a7dc3ac92005485714f87541ad6d0d478988b478c5774227a7d39b01660050",
    "zh:547e0def44080456169bf77c21037aa6dc9e7f3e644a8f6a2c5fc3e6c15cf560",
    "zh:6842b03d050ae1a4f1aaed2a2b1ca707eae84ae45ae492e4bb57c3d48c26e1f1",
    "zh:6ced0a9eaaba12377f3a9b08df2fd9b83ae3cb357f859eb6aecf24852f718d9a",
    "zh:766bcdf71a7501da73d4805d05764dcb7c848619fa7c04b3b9bd514e5ce9e4aa",
    "zh:84cc8617ce0b9a3071472863f43152812e5e8544802653f636c866ef96f1ed34",
    "zh:b1939e0d44c89315173b78228c1cf8660a6924604e75ced7b89e45196ce4f45e",
    "zh:ced317916e13326766427790b1d8946c4151c4f3b0efd8f720a3bc24abe065fa",
    "zh:ec9ff3412cf84ba81ca88328b62c17842b803ef406ae19152c13860b356b259c",
    "zh:ff064f0071e98702e542e1ce00c0465b7cd186782fe9ccab8b8830cac0f10dd4",
  ]
}

provider "registry.opentofu.org/integrations/github" {
  version     = "6.1.0"
  constraints = ">= 5.18.0"
  hashes = [
    "h1:MWD2GsKJ92kgyegYPGPjQKM0SqFaFbvOibMfDQdJsP0=",
    "h1:Z1C0pLLJQF2fit8PKwc1e5Vm64q73RpayCmkDSMihqw=",
    "zh:03c2a7d7fa334b5abb1ea4962bb2ffabfff96ec883b1a62445fe724d4a541313",
    "zh:144f77865c87843635a3f6a0d52530ab3a6270b04dfa2da744a9fc0003b64900",
    "zh:4cfa42e679be22e516b8e0294688d6cfc896c0e1456387fd9d10d09d84e99c6d",
    "zh:5ff9e90b7bc9008f5b7fb0d9ef0c7c67eb8fb29439309620de1b0b1810b3e7f9",
    "zh:7bfe85fcbef2b4b6ff5eff8bc82a590f2471e71297207616014c852e7385921b",
    "zh:a105ec4828973821a9618c0e058f5a597de014edf7aa64d97b7f4fc528abbc36",
    "zh:a495c5b3bc6ce3d6261e9d1ba7f285e7e463b5f6ad15e533d5b7037ab985530f",
    "zh:a4d7e43b7b59f41022e9137115440df46aa9de62a187ae4a35fb9fc388fca4c3",
    "zh:a75ab20f5032e2ebcfe288e06d0f4f8eafd8fed569be7ac7c384e55c294ada43",
    "zh:cb6e9cde411355ad477a60fecb8ed9b665d8475761949e03aceed57851842385",
    "zh:d833d63b5374841e667647fde74d2388d1249a097a633b4bba20ad175b7db681",
    "zh:e4e5aab1a6e37fb8220621673384b62a3f2693ca1052487eb4ca38426a40bc8b",
    "zh:f06a84ddf6723e880997c0f773b500b3fabcecb1230d9ed2d93943700802c876",
    "zh:f9695f2ceddfc243834a10bd91cfb8aa1b0e7cdb9eee14d17d49b4f439440b86",
  ]
}
