require 'ruby-growl'

class BatteryGrowl

  def initialize
  end

  def run(percent=10,host='localhost')
    battery_usage = check_battery
    subject = 'バッテリー容量低下'
    message = "残り#{battery_usage}%です。充電してください。"
    post_growl(subject,message,host) if battery_usage <= percent
    return true
  rescue => e
    raise "#{e}"
  end

  private

  def check_battery
    cmd = "pmset -g batt|grep 'InternalBattery'|awk '{print $2}'|cut -d'%' -f1"
    usage = `#{cmd}`.to_i
    return usage
  rescue => e
    raise "#{e}"
  end

  def post_growl(subject,message,host)
    g = Growl.new host, "ruby-growl"
    g.add_notification("notification", "ruby-growl Notification")
    g.notify "notification", subject, message
    return true
  rescue => e
    raise "#{e}"
  end

end
