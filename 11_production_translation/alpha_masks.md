# Alpha Masks

How to use lace as transparency maps in image/video/shader systems.

## Practical concerns

- thread width must survive output method
- holes must not fill in
- islands need bridges for cutting
- too much detail can collapse at small size
- edges need cleanup
- repeat seams must be tested
- transparency must be controlled

## Output checklist

- black/white mask version
- transparent PNG version
- SVG/vector version
- prompt description
- scale notes
- failure modes
