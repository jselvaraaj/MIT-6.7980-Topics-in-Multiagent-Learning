#set page(width: auto, height: auto, margin: 0mm, fill: none)
#import "../libs/typography.typ": figure-font, figure-style
#set text(font: figure-font, size: 10pt)
#show: figure-style
#import "../libs/efgs.typ": efg-tree

// Two-player zero-sum perfect-information game separating the equilibrium
// refinements of the Venn diagram. The payoff t after action r is 2 or 1.
#box(
  fill: blue.lighten(97%),
  radius: 2mm,
  inset: (x: 3mm, top: 1mm, bottom: 3mm),
)[#efg-tree(
    sx: 0.28pt,
    sy: 0.25pt,
    nodes: (
      "/": (0, 0),
      "/a": (-200, 120),
      "/b": (200, 120),
      "/b/r": (80, 240),
      "/b/s": (320, 240),
      "/b/s/c": (200, 360),
      "/b/s/d": (440, 360),
    ),
    payoff: key => {
      if key == "/a" [
        $(1, -1)$
      ] else if key == "/b/r" [
        $(t, -t)$
      ] else if key == "/b/s/c" [
        $(1, -1)$
      ] else [
        $(-1, 1)$
      ]
    },
    root-is-chance: false,
    (nodes: ("/",), name: "A", bend: 0mm),
    (nodes: ("/b",), name: "B", bend: 0mm, right: true),
    (nodes: ("/b/s",), name: "C", bend: 0mm, right: true),
  )]
