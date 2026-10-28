---
name: ketchup-video
description: Produce an evidence-based subtitled video catch-up, with operator decisions as text, using an available renderer and existing artifacts.
disable-model-invocation: true
---

# Ketchup video

Follow [ketchup](../ketchup/SKILL.md) for the evidence window and complete decision list. Rendering outside the repository is the sole exception to its read-only rule. This skill ships no JavaScript, Python, or shell renderer.

1. Inspect the existing screenshots, recordings, measured data, and changes. Write a one-sentence takeaway and up to ten slide points, fewer when sufficient. Each slide must explain one actual outcome with one picture, not a status/bullet list. Never draw a screen that was not captured.
2. Discover an available rendering capability. Prefer the host's media tool; otherwise use installed FFmpeg with supported filters and an available font. Check version/filter availability before constructing an invocation. Use owned scratch files only and record exact commands. Missing renderer is a named limitation, not a reason to create a bundled script.
3. Prepare landscape frames from existing artifacts or locally rendered diagrams. Keep visual meaning consistent across slides. Add one plain-language subtitle per slide in a separate strip so it cannot cover content. Never expose credentials from captures.
4. For still PNG slides with subtitles already rendered, encode each using the installed FFmpeg's documented still-image input, H.264 and yuv420p output, then concatenate equal-size/frame-rate segments with the concat demuxer. If `drawtext` is available it can burn subtitles; escape paths/text for the actual shell. Use actual discovered paths, not placeholder commands in the delivered rerun record. Render a silent MP4; cuts are acceptable when a transition filter is unavailable.
5. Hold each slide for at least one second per three newly introduced words, including subtitle and changed labels. Inspect an extracted frame from every segment at chat size and inspect timestamps/duration with a media probe. Fix clipping, unreadable text, wrong ordering, or insufficient holds before delivery. Merely creating a nonempty file is not proof it is watchable.
6. Embed the verified video using the host's supported attachment mechanism. Under it, give ketchup's complete operator decision list and remaining agent work; do not duplicate the video's story as prose.

If rendering or attachment fails, name the attempted step and actual failure and return the textual catch-up/decisions. Do not claim a video was produced or replace it with an invented download link. Preserve successful evidence artifacts; delete only scratch files you own.
