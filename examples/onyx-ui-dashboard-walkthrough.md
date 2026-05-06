# Onyx UI Dashboard Runner Walkthrough

The fixture is intentionally compact, so the review starts with the cases that pull farthest apart.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | view drift | 117 | watch |
| stress | state pressure | 114 | watch |
| edge | layout risk | 233 | ship |
| recovery | interaction cost | 220 | ship |
| stale | view drift | 143 | ship |

Start with `edge` and `stress`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The useful comparison is `layout risk` against `state pressure`, not the raw score alone.
