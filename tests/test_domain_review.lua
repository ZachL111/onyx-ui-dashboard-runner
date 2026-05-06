package.path = "src/?.lua;" .. package.path
local review = require("domain_review")

local item = { signal = 44, slack = 43, drag = 23, confidence = 55 }
assert(review.score(item) == 117)
assert(review.lane(item) == "watch")
