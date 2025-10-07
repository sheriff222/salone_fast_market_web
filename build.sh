#!/bin/bash
set -e

# Install Flutter if not exists
if [ ! -d "$HOME/flutter" ]; then
  echo "Installing Flutter..."
  git clone https://github.com/flutter/flutter.git -b stable $HOME/flutter
fi

# Add Flutter to PATH
export PATH="$PATH:$HOME/flutter/bin"

# Configure Flutter
flutter config --enable-web --no-analytics

# Get dependencies and build
flutter pub get
flutter build web --release

echo "Build completed successfully!"

