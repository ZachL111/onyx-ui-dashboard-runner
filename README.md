# onyx-ui-dashboard-runner

`onyx-ui-dashboard-runner` keeps a focused Lua implementation around frontend apps. The project goal is to develop a Lua command-oriented project for dashboard scenarios with negative fixtures, human-readable error snapshots, and no production deployment claims.

## Why I Keep It Small

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how view drift and layout risk should influence a review result.

## Onyx UI Dashboard Runner Review Notes

The first comparison I would make is `layout risk` against `state pressure` because it shows where the rule is most opinionated.

## Included Behavior

- `fixtures/domain_review.csv` adds cases for view drift and state pressure.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/onyx-ui-dashboard-walkthrough.md` walks through the case spread.
- The Lua code includes a review path for `layout risk` and `state pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Internal Model

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The Lua implementation avoids hidden state so fixture changes are easy to reason about.

## Try It Locally

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Validation

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Scope

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.
