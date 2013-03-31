-- create an arrow as transition between fg and bg color
function mwidget_arrow(fg, bg, direction)
  local widget_bg = wibox.widget.background()
  local widget_fg = wibox.widget.textbox()

  local arrow="|"
  if direction == "cleft"   then arrow = "⮃" end
  if direction == "cright"  then arrow = "⮁" end
  if direction == "left"   then arrow = "⮂" end
  if direction == "right"  then arrow = "⮀" end

  widget_fg:set_font("Anonymous Pro for Powerline 18")
  widget_fg:set_markup("<span color=\"".. fg .. "\">".. arrow .."</span>")
  widget_bg:set_bg(bg)

  widget_bg:set_widget(widget_fg)
  return widget_bg
end

function mwidget_icon(symbol)
  local mwidget_icon = wibox.widget.textbox()
  mwidget_icon:set_font("Anonymous Pro for Powerline 14")
  mwidget_icon:set_text(symbol)
  return mwidget_icon
end

-- color the background of a widget
function mwidget_bg(bg, widget)
  local widget_bg = wibox.widget.background()
  widget_bg:set_bg(bg)
  widget_bg:set_widget(widget)
  return widget_bg
end


