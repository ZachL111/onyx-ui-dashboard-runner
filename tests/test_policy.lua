package.path = "src/?.lua;" .. package.path
local policy = require("policy")

local signal_case_1 = { demand = 67, capacity = 83, latency = 23, risk = 24, weight = 9 }
assert(policy.score(signal_case_1) == 11)
assert(policy.classify(signal_case_1) == "review")
local signal_case_2 = { demand = 67, capacity = 107, latency = 20, risk = 10, weight = 9 }
assert(policy.score(signal_case_2) == 145)
assert(policy.classify(signal_case_2) == "review")
local signal_case_3 = { demand = 76, capacity = 103, latency = 22, risk = 17, weight = 13 }
assert(policy.score(signal_case_3) == 126)
assert(policy.classify(signal_case_3) == "review")
