# Publication checklist

## Repository
- [x] Public repository initialized
- [x] Clean README, install guide and changelog
- [x] Publish an **illustrative** SVG preview
- [ ] Upload original crescent icon PNG
- [ ] Upload real app screenshot PNG
- [ ] Decide whether to publish original Swift source and a license

## App distribution
- [x] Receive compiled `Quran Notch.app` ZIP
- [x] Inspect app metadata: version 1.0.0, minimum macOS 13.0
- [ ] Verify binary architecture, notarization and signing on a Mac
- [ ] Test daily ayah refresh through local midnight
- [ ] Build and test release DMG using `scripts/make-dmg.sh`
- [ ] Publish GitHub Release tagged `v1.0.0` with a tested DMG
- [ ] Update README to link the final release and replace pending-release notes
- [ ] Verify Quranic text / translation redistribution rights

Never describe a build as signed/notarized without verifying it.
