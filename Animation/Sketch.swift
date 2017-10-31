import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    
    // Change in position
    var dx : Int    // difference in x
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 300
        
        // Set the difference for x
        dx = random(from: -10, toButNotIncluding: 20)
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Clear the background
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
    
        // Change position
        x += dx
        
        // Check the position and reverse course
        // if we off the right edge of the screen
        if x > 500 {
             dx = random(from: -10, toButNotIncluding: 20)
            
        }
        
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.orange
        canvas.drawEllipse(centreX: x, centreY: 350, width: 70, height: 70)
        canvas.drawEllipse(centreX: x, centreY: 250, width: 50, height: 50)
        canvas.drawEllipse(centreX: x, centreY: 150, width: 25, height: 25)
        canvas.drawEllipse(centreX: x, centreY: 50, width: 15, height: 15)
        
    }
    
}
