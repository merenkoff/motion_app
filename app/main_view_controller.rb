#  Ruby version by Sergei Me on 7/23/13

class MainViewController < UIViewController

=begin
def loadView
#    @_distanceLabel = UILabel.new
    views = NSBundle.mainBundle.loadNibNamed "MainViewController", owner:self, options:nil
    self.view = views[0]
=end

def viewDidLoad
    super

    #XIB initialisation
    @_controlBtn = view.viewWithTag 1
    @_controlBtn.addTarget self, action:'onControlBtnPushed:', forControlEvents:UIControlEventTouchUpInside
    #end XIB

=begin ##Future initialisation of RRMotionDataCollector
    @_motionDataCollector = RRMotionDataCollector.alloc.init
    @_motionDataCollector.delegate = self
    @_motionDataCollector.userState = RRUserStateStand
=end
end

#pragma mark - IBAction

def onControlBtnPushed(button)
    button.setSelected(!button.selected?)
=begin
    if (_controlBtn.selected) {
        _motionDataCollector.startLoggingMotionData
    }else {
        _motionDataCollector.stopLoggingMotionData(true)
    }
=end
end


def onSegmentControlPushed
    ## TODO: Need init first. Next step

    #@_motionDataCollector.userState = _segmentControl.selectedSegmentIndex;
end


#pragma mark - RRMotionDataCollectorDelegate
def motionDataCollector(motionDataCollector, didUpdateLocation:location, distance:distance time:time)
    
    ## TODO: Need init first. Next step

    #@_latitudeLabel.text = NSString.stringWithFormat("%f", location.coordinate.latitude)
    #@_longitudeLabel.text = NSString.stringWithFormat("%f", location.coordinate.longitude)
    #@_distanceLabel.text = NSString.stringWithFormat("%f", distance)
    #@_speedLabel.text = NSString.stringWithFormat("%f", location.speed)
end



def motionDataCollector(motionDataCollector, didUpdateAccelerometerData:accelerometerData)

end

def motionDataCollector(motionDataCollector, didUpdateGyroData:gyroData)

end

def motionDataCollector(motionDataCollector, didUpdateDeviceMotion:deviceMotion)
    ## TODO: Need init first. Next step
    #@_userAccXLabel.text = NSString.stringWithFormat("%f", deviceMotion.userAcceleration.x)
    #@_userAccYLabel.text = NSString.stringWithFormat("%f", deviceMotion.userAcceleration.y)
    #@_userAccZLabel.text = NSString.stringWithFormat("%f", deviceMotion.userAcceleration.z)
end

end
