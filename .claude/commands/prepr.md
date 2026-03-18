Review the current changes before PR.

Do a cleanup pass:
1. Simplify code where possible
2. DRY is important—flag repetition aggressively.
3. Improve naming and structure
4. Add/update useful inline comments only where needed - eliminate comments where the code is self-explanatory
5. Add/update high-level documentation for important behavior or architecture changes to help you move more quickly in the future
6. Preserve behavior unless fixing an obvious bug
7. Run relevant tests/lint if available
8. If there are tests worth running related to these code paths, run them
9. Consider any edge cases you may have missed
10. Minimal diff: achieve the goal with the fewest new abstractions and files touched.
11. Reduce any technical debt hotspots
12. Any major areas where if 1000+ users used this, would we have any major performance bottlenecks / slow downs

Then summarize:
- simplifications made
- duplication removed
- docs updated
- any remaining concerns
