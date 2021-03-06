class Kxmlgui < Formula
  desc "Framework for managing menu and toolbar actions"
  homepage "https://github.com/KDE/kxmlgui"
  url "https://github.com/KDE/kxmlgui/archive/v5.28.0.tar.gz"
  sha256 "ab48499bc74dde64a386e09208e51d136730318decd618796bfda2470f453da1"

  depends_on "cmake" => :build
  depends_on "extra-cmake-modules" => :build
  depends_on "qt5" => "with-dbus"
  depends_on "kcoreaddons"
  depends_on "kitemviews"
  depends_on "kconfig"
  depends_on "kconfigwidgets"
  depends_on "ki18n"
  depends_on "kiconthemes"
  depends_on "ktextwidgets"
  depends_on "kwidgetsaddons"
  depends_on "kwindowsystem"
  depends_on "muellermartin/kde/attica"
  depends_on "kglobalaccel"

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test kxmlgui`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
