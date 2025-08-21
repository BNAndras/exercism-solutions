class Clock
  constructor: (hour = 0, minute = 0) ->
    total = hour * 60 + minute
    @minutes = (total % 1440 + 1440) % 1440
  
  toString: () ->
    hours = Math.floor @minutes / 60
    minutes = @minutes % 60
    "#{String(hours).padStart 2, '0'}:#{String(minutes).padStart 2, '0'}"

  plus: (minutes) ->
    new Clock 0, @minutes + minutes

  minus: (minutes) ->
    new Clock 0, @minutes - minutes

  equals: (otherClock) ->
    @minutes is otherClock.minutes

module.exports = Clock
