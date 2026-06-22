#!/usr/bin/env bash
# Renames the original MDIS asset filenames to the clean names index.html expects.
# Usage: copy your original files into this images/ folder, then run:  bash rename.sh
set -u

mv_if() { [ -f "$1" ] && mv -v -- "$1" "$2" || echo "skip (not found): $1"; }

mv_if "WordMark White RASTER_edited.png"                         "logo-mdis-wordmark.png"
mv_if "WhitePoweredByARI.png"                                    "logo-powered-by-ari.png"
mv_if "HonMikeDodd-4559.jpg"                                     "voice-dodd.jpg"
mv_if "The Role of DOW Labs-4793.jpg"                            "voice-tran.jpg"
mv_if "Competition+the Future Fight-4680 (1).jpg"               "voice-thabet.jpg"
mv_if "GovernorBraun (4 of 8).jpg"                              "voice-braun.jpg"
mv_if "AchievingDroneDominancefortheAmericanWarfighter (7 of 7).jpg" "voice-limeberry.jpg"
mv_if "SenToddYoung-4846.jpg"                                    "voice-young.jpg"
mv_if "1.png"                                                    "favicon.png"

echo "Done. Files now match the names used in index.html."
