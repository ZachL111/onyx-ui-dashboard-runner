# onyx-ui-dashboard-runner

`onyx-ui-dashboard-runner` explores frontend apps in Lua. The repository keeps the core rule set compact, then surrounds it with examples that show how the decisions move.

## Onyx UI Dashboard Runner Notes

The quickest review path is the verifier first, then the fixtures, then the operations note. That order makes it easy to see whether the code, data, and explanation still agree.

## Why This Exists

I use this kind of project to make a rule visible before adding more machinery around it. The important part here is not the size of the codebase. It is that the input signals, scoring rule, fixture data, and expected output can all be checked in one sitting.

## Example Scenarios

`degraded` is the first example I would inspect because it lands on the `review` path with a score of -112. The broader file also keeps `degraded` at -112 and `surge` at 207, which gives the model a useful low-to-high spread.

## Implementation Notes

The project is organized around a compact model rather than a large framework. Inputs are scored, classified, and checked against golden fixtures. The constants live in code and are mirrored in metadata so documentation drift is easy to catch. The Lua project keeps the module shape simple and validates behavior through a direct script.

## Feature Notes

- Models view models with deterministic scoring and explicit review decisions.
- Uses fixture data to keep interaction state changes visible in code review.
- Includes extended examples for layout checks, including `surge` and `degraded`.
- Documents fixture data tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.

## Try It

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Tests

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Code Tour

- `src`: primary implementation
- `tests`: verification harness
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## Roadmap

- Add a loader for `examples/extended_cases.csv` and promote selected cases into the language test suite.
- Add a short report command that prints the score breakdown for a single scenario.
- Add malformed input fixtures so the failure path is as visible as the happy path.
- Add one more frontend apps fixture that focuses on a malformed or borderline input.

## Boundaries

The fixture set is deliberately small. That keeps the review surface clear, but it also means the model should not be treated as a complete domain simulator.

## Local Setup

Clone the repository, enter the directory, and run the verifier. No database server, cloud account, or token is required.
