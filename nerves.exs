use Mix.Config

config :nerves_system_ev3, :nerves_env,
  type: :system,
  build_platform: Nerves.System.Platforms.BR,
  bakeware: [target: "ev3", recipe: "nerves/ev3"],
  ext: [
    defconfig: "nerves_defconfig"
  ]
