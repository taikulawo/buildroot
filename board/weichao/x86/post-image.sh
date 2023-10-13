GENIMAGE_CFG="$(dirname $0)/genimage.cfg"
GENIMAGE_TMP="${BUILD_DIR}/genimage.tmp"

# generate rootfs.img
genimage \
  --rootpath "${TARGET_DIR}" \
  --tmppath "${GENIMAGE_TMP}" \
  --inputpath "${BINARIES_DIR}" \
  --outputpath "${BINARIES_DIR}" \
  --config "${GENIMAGE_CFG}"