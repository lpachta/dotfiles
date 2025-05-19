backup() {
  src="${1%/}" # remove trailing slash if any
  dest="${2:-$src-backup-$(date +%Y%m%d_%H%M%S)}"

  if [[ ! -d "$src" ]]; then
    echo "❌ Error: '$src' is not a directory"
    return 1
  fi

  cp -a "$src" "$dest" && echo "✅ Backup created at: $dest"
}
