# Changelog

## 1.0.1 — 2026-11-25

- Fewer invisible helper bonds (each costs chemfig as much as a real bond):
  an exit on atom 1 uses one tiny bond instead of two, and `exit=none` emits
  none, so it equals the hand-written ring. Drawings are unchanged.
- Manual: speed notes (`exit=none`, memoize, externalization).

## 1.0.0 — 2026-11-25

First public release.

- Rings as chemfig submolecules: `!{<ring>}` and `!{<ring>*}{<keys>}`
  (27 built-in rings and `!{ring*}` for any ring).
- Ring keys: substituents by position, `exit`, `entry`, `clockwise`, `circle`,
  `atoms`, `bonds`, `size`, `name`.
- Zigzag chains: `!{chain}{<n>, ...}` with substituents, `double`, `triple`,
  `bonds`, `atoms`, `start`, `name`, `exit`.
- 23 condensed groups that flip for left/right use, 18 skeletal groups
  (with primed mirror images), naphthalene, anthracene, indole.
- `\chemfragset`, `\chemfragdefinering`, `\chemfragring`, `\chemfragchain`.
