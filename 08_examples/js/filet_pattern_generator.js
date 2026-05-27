// filet_pattern_generator.js
export function heartFilet(w = 31, h = 27) {
  const cells = [];
  for (let y = 0; y < h; y++) {
    let row = "";
    for (let x = 0; x < w; x++) {
      const nx = (x - w / 2) / (w / 2);
      const ny = (y - h / 2) / (h / 2);
      const a = nx * nx + ny * ny - 0.45;
      const v = a * a * a - nx * nx * ny * ny * ny;
      row += v < 0 ? "█" : "·";
    }
    cells.push(row);
  }
  return cells.join("\n");
}
console.log(heartFilet());
