#!/data/data/com.termux/files/usr/bin/bash

# --- Sameen's QDL Auto-Fixer ---
echo "🚀 Starting QDL Setup..."

# 1. Install necessary tools
pkg update && pkg install libxml2 patchelf termux-api -y

# 2. Identify the system's libxml2 version
# This finds the actual file (e.g., libxml2.so.16 or .2.14)
TARGET_LIB=$(find $PREFIX/lib -name "libxml2.so.*" | head -n 1 | xargs basename)

if [ -z "$TARGET_LIB" ]; then
    echo "❌ Error: libxml2 not found. Please run 'pkg install libxml2' manually."
    exit 1
fi

# 3. Patch the QDL binary
if [ -f "qdl" ]; then
    echo "🔧 Patching binary to use $TARGET_LIB..."
    chmod +x qdl
    # This replaces the old 'libxml2.so.2' requirement with the one found on the phone
    patchelf --replace-needed libxml2.so.2 "$TARGET_LIB" qdl
    echo "✅ Success! QDL is now compatible with your system."
    echo "👉 Run './qdl' to see usage instructions."
else
    echo "❌ Error: 'qdl' binary not found in this folder. Make sure you are in the right directory."
fi
