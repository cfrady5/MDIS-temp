#!/usr/bin/env bash
# Renames original MDIS asset filenames to the clean names index.html expects.
# The six quote photos are already added & renamed in the repo. This is mainly
# for the remaining logo/favicon files — drop them in this images/ folder, then:
#   bash rename.sh
set -u

mv_if() { [ -f "$1" ] && mv -v -- "$1" "$2" || echo "skip (not found): $1"; }

# Logos / icon (PNG with transparency recommended)
mv_if "WordMark White RASTER_edited.png"  "logo-mdis-wordmark.png"
mv_if "WhitePoweredByARI.png"             "logo-powered-by-ari.png"
mv_if "1.png"                             "favicon.png"

# Quote photos (already renamed in repo; handles re-uploads of .avif originals)
mv_if "HonMikeDodd-4559.avif"                                     "voice-dodd.avif"
mv_if "The Role of DOW Labs-4793.avif"                            "voice-tran.avif"
mv_if "Competition+the Future Fight-4680 (1).avif"               "voice-thabet.avif"
mv_if "GovernorBraun (4 of 8).avif"                              "voice-braun.avif"
mv_if "AchievingDroneDominancefortheAmericanWarfighter (7 of 7).avif" "voice-limeberry.avif"
mv_if "SenToddYoung-4846.avif"                                    "voice-young.avif"

echo "Done. Files now match the names used in index.html."
