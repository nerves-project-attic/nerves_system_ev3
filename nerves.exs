use Mix.Config

config :nerves_system_ev3, :nerves_env,
  type: :system,
  bakeware: [target: "ev3", recipe: "nerves/ev3"],
  build_platform: Nerves.System.Platforms.BR,
  build_config: [
    defconfig: "nerves_defconfig"
  ]
