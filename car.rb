class Car

  attr_reader :crashed, :odometer

  @@total_kilometers = 0

  def initialize(licence_plate_num, owners_name)
    @licence_plate_num = licence_plate_num
    @owners_name = owners_name
    @running = false
    @crashed = false
    @odometer = 0
  end

  def self.total_kilometers
    @@total_kilometers
  end

  def start
    if @running == false
      @running = true
    end
    #@running = true unless @running
  end

  def stop
    if @running == true
      @running = false
    end
    #@running = false if @running
  end

  def drive(km)
    if @running && !@crashed
      @odometer += km
      @@total_kilometers += km
    end
  end

  def crash(another_car = nil)
    @crashed = true
    @running = false if @running
    if another_car
      another_car.crash
    end
    # another_car&.crash
  end

end
