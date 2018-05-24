import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var y : Int
    
    // Change in position of circle
    var xx : Int
    var yy : Int
    

    override init() {
        
        // Create canvas
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = random(from: 1, toButNotIncluding: 500)
        y = random(from: 1, toButNotIncluding: 500)
        
        
        // Set the change value
        xx = 2
        yy = 2
        
    }
    

    func draw() {
        
        // Position Change
        x += xx
        y += yy
        
        
        // To Remove the Trail
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
        
        
        // Left
        if x < 0 {
            xx = 2
        }
        
        //Right
        if x > 490 {
            xx = -2
        }
        
        if y < 0 {
            yy = 2
        }
        
        if y > 490 {
            yy = -2
        }
        
        // Black Ball
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: y, width: 50, height: 50)
}

}
