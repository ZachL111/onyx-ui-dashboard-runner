package = "onyx-ui-dashboard-runner"
version = "0.1-1"
source = { url = "." }
description = { summary = "Develop a Lua command-oriented project for dashboard scenarios with negative fixtures, human-readable error snapshots, and no production deployment claims.", license = "MIT" }
build = { type = "builtin", modules = { policy = "src/policy.lua" } }
