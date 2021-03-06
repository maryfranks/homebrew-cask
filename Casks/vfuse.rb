cask 'vfuse' do
  version '2.0.5'
  sha256 'fff3b4f960b7ec0f131a12ba53a1b556e20741aea53eb3b85d04539f836a0648'

  url "https://github.com/chilcote/vfuse/releases/download/#{version}/vfuse-#{version}.pkg"
  appcast 'https://github.com/chilcote/vfuse/releases.atom',
          checkpoint: '108f22f1587093b89db239aa4e0b878136b04600ad6f950927ac2cc3a2465524'
  name 'vfuse'
  homepage 'https://github.com/chilcote/vfuse'

  pkg "vfuse-#{version}.pkg"

  uninstall pkgutil: 'com.github.vfuse'

  caveats do
    files_in_usr_local
  end
end
