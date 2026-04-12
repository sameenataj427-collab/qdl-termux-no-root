#!/data/data/com.termux/files/usr/bin/bash

echo "🚀 Starting Sameen's QDL Setup..."

# 1. Install Dependencies
echo "📦 Installing requirements..."
pkg update && pkg install libxml2 patchelf termux-api -y

# 2. Identify and Patch Library
# This finds the actual file (e.g., libxml2.so.16) on the user's phone
TARGET_LIB=$(find $PREFIX/lib -name "libxml2.so.*" | head -n 1 | xargs basename)

if [ -z "$TARGET_LIB" ]; then
    echo "❌ Error: libxml2 not found. Run 'pkg install libxml2' first."
    exit 1
fi

if [ -f "qdl" ]; then
    echo "🔧 Patching qdl binary to use $TARGET_LIB..."
    chmod +x qdl
    patchelf --replace-needed libxml2.so.2 "$TARGET_LIB" qdl
    echo "✅ Success! QDL is ready."
    echo "👉 Use './qdl' to start."
else
    echo "❌ Error: 'qdl' binary not found in this folder."
fi
