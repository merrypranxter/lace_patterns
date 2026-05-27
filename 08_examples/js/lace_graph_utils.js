// lace_graph_utils.js
export function makeRadialGraph(segments = 12, rings = 4) {
  const nodes = [];
  const edges = [];
  for (let r = 1; r <= rings; r++) {
    for (let i = 0; i < segments; i++) {
      nodes.push({ id: `r${r}_${i}`, r, i, theta: (Math.PI * 2 * i) / segments });
    }
  }
  for (let r = 1; r <= rings; r++) {
    for (let i = 0; i < segments; i++) {
      edges.push([`r${r}_${i}`, `r${r}_${(i + 1) % segments}`]);
      if (r < rings) edges.push([`r${r}_${i}`, `r${r + 1}_${i}`]);
    }
  }
  return { nodes, edges };
}

export function makeFiletGrid(w = 24, h = 24, fillFn = (x, y) => false) {
  const cells = [];
  for (let y = 0; y < h; y++) for (let x = 0; x < w; x++) {
    cells.push({ x, y, filled: !!fillFn(x, y) });
  }
  return { w, h, cells };
}
