#!/usr/bin/env python3
"""Generate a simple radial lace SVG."""
import math
from pathlib import Path

W = H = 1000
cx = cy = 500
segments = 16
rings = [90, 170, 260, 350, 430]

parts = [f'<svg xmlns="http://www.w3.org/2000/svg" width="{W}" height="{H}" viewBox="0 0 {W} {H}">']
parts.append('<rect width="100%" height="100%" fill="black"/>')
parts.append('<g fill="none" stroke="white" stroke-width="5" stroke-linecap="round" stroke-linejoin="round">')

for r in rings:
    parts.append(f'<circle cx="{cx}" cy="{cy}" r="{r}"/>')

for i in range(segments):
    a = 2 * math.pi * i / segments
    x1, y1 = cx + math.cos(a)*70, cy + math.sin(a)*70
    x2, y2 = cx + math.cos(a)*430, cy + math.sin(a)*430
    parts.append(f'<line x1="{x1:.2f}" y1="{y1:.2f}" x2="{x2:.2f}" y2="{y2:.2f}"/>')
    px, py = cx + math.cos(a)*465, cy + math.sin(a)*465
    parts.append(f'<circle cx="{px:.2f}" cy="{py:.2f}" r="16"/>')

parts.append('</g></svg>')
Path("radial_lace.svg").write_text("\n".join(parts), encoding="utf-8")
print("wrote radial_lace.svg")
