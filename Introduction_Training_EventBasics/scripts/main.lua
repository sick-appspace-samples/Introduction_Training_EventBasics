local counter = 0

local function doOnTimerExpired()
  counter = counter + 1
  print( "Timer has expired " .. counter .. " times." )
end

local myTimer = Timer.create()
myTimer:setExpirationTime( 1000 )   -- in [ms]
myTimer:setPeriodic( true )
myTimer:register( "OnExpired", doOnTimerExpired )

local function main()
  print( "The AppEngine has started ..." )
  myTimer:start()
end
Script.register( "Engine.OnStarted", main )
