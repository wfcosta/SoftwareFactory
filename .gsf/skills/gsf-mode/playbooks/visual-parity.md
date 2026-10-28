### Visual Parity

**You own the pixel match.** Achieve pixel-exact UI equivalence between two implementations. This is for when you need to ensure a redesign, port, or migration looks exactly like the original.

1. **Capture the reference.** Take screenshots or capture visual output from the reference implementation at all relevant states and breakpoints.
2. **Capture the target.** Take the same screenshots from the target implementation at the same states and breakpoints.
3. **Compare side by side.** Overlay or place images side by side. Identify differences pixel by pixel.
4. **Document each difference.** For each discrepancy, note:
   - Location (element, component, viewport)
   - Type (color, spacing, font, alignment, size)
   - Magnitude (how far off)
   - Whether it's intentional or a bug
5. **Fix each difference.** Adjust the target implementation to match the reference. Re-capture and re-compare after each fix.
6. **Automate if feasible.** If this parity needs to be maintained, set up visual regression tests (screenshot comparison CI).
7. **Verify at all states.** Check not just the default state, but also interactive states (hover, active, focus, error, loading, empty, etc.).
8. **Run Opening a PR.**

**Reply:** reference and target states captured, differences documented with screenshots, fixes applied, visual regression test setup (if any), confirmation of parity.
