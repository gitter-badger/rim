# encoding: utf-8
module Rim
  module Paint
    def self.theme_default
      rgb = RGB.new()
      Rim::Paint.theme = {
        ui: {
          root: T.default,
          pane: rgb.from_hex('#E0E0E0').ansi_bg +
                rgb.from_hex('#212121').ansi_fg,
          # panel separator
          pane_sep_char: ' ', # only 1 char!
          pane_sep: rgb.from_hex('#6E6E6E').ansi_bg,
          pane_numbers: rgb.from_hex('#FFFFFF').ansi_fg +
                        rgb.from_hex('#DB4437').ansi_bg
        },
        plain: {
          current_line: rgb.from_hex('#212121').ansi_bg +
                        rgb.from_hex('#FFFFFF').ansi_fg,
          line: T.default
        }
      }
    end
  end
end
