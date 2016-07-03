use Mix.Config

version =
  Path.join(__DIR__, "VERSION")
  |> File.read!
  |> String.strip

config :nerves_system_ev3, :nerves_env,
  type: :system,
  version: version,
  mirrors: [
    "https://github.com/nerves-project/nerves_system_ev3/releases/download/v#{version}/nerves_system_ev3-v#{version}.tar.gz",
    "https://s3.amazonaws.com/nerves/artifacts/nerves_system_ev3-#{version}.tar.gz"],
  build_platform: Nerves.System.Platforms.BR,
  build_config: [
    defconfig: "nerves_defconfig",
    package_files: [
      "rootfs-additions",
      "post-createfs.sh",
      "fwup.conf",
      "linux-3.16-ev3dev.defconfig",
      "ev3-busybox.config",
      "nerves_logo_178x128.pbm"
    ]
  ]
