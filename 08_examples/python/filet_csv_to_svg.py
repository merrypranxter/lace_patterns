#!/usr/bin/env python3
"""Convert a CSV grid of 0/1 values into a simple filet lace SVG."""
import csv
from pathlib import Path

def convert(csv_path, svg_path, cell=20):
    rows = []
    with open(csv_path) as f:
        for row in csv.reader(f):
            rows.append([int(x) for x in row])
    h, w = len(rows), len(rows[0])
    parts = [f'<svg xmlns="http://www.w3.org/2000/svg" width="{w*cell}" height="{h*cell}" viewBox="0 0 {w*cell} {h*cell}">']
    parts.append('<rect width="100%" height="100%" fill="white"/>')
    parts.append('<g stroke="black" stroke-width="1" fill="none">')
    for y in range(h+1):
        parts.append(f'<line x1="0" y1="{y*cell}" x2="{w*cell}" y2="{y*cell}"/>')
    for x in range(w+1):
        parts.append(f'<line x1="{x*cell}" y1="0" x2="{x*cell}" y2="{h*cell}"/>')
    parts.append('</g><g fill="black">')
    for y,row in enumerate(rows):
        for x,v in enumerate(row):
            if v:
                parts.append(f'<rect x="{x*cell}" y="{y*cell}" width="{cell}" height="{cell}"/>')
    parts.append('</g></svg>')
    Path(svg_path).write_text("\n".join(parts), encoding="utf-8")

if __name__ == "__main__":
    convert("filet_grid.csv", "filet_grid.svg")
