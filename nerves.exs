use Mix.Config

config :nerves_system_ev3, :nerves_env,
  type:  :system,
  build_platform: :nerves_system_br,
  bakeware: [target: "ev3", recipe: "nerves/ev3"],
  ext: [
    defconfig: "nerves_defconfig"
  ]
