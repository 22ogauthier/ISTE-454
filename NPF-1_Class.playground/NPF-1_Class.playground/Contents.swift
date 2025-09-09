import CoreLocation

class Park: CustomStringConvertible {
    private var parkName : String
    private var parkLocation : String
    private var dateFormed : String
    private var area : String
    private var link : String
    private var location : CLLocation?
    private var imageLink : String
    private var parkDescription : String
    
    func getParkName() -> String {
        parkName
    }
    func set(parkName:String) {
        var trimmedName = parkName.trimmingCharacters(in: .whitespaces)
        if trimmedName.count > 3 && trimmedName.count < 75 {
            self.parkName = trimmedName
        } else {
            self.parkName = "TBD"
            print("Bad value of \(parkName) in set(parkName): setting to TBD")
        }
        
    }
    
    func getParkLocation() -> String {
        parkLocation
    }
    func set(parkLocation:String) {
        self.parkLocation = parkLocation
    }
    
    func getDateFormed() -> String {
        dateFormed
    }
    func set(dateFormed:String) {
        self.dateFormed = dateFormed
    }
    
    func getArea() -> String {
        area
    }
    func set(area:String) {
        self.area = area
    }
    
    func getLink() -> String {
        link
    }
    func set(link:String) {
        self.link = link
    }
    
    func getLocation() -> CLLocation? {
        location
    }
    func set(location:CLLocation?) {
        self.location = location
    }
    
    func getImageLink() -> String {
        imageLink
    }
    func setImageLink(imageLink: String) {
        self.imageLink = imageLink
    }
    
    func getParkDescription() -> String {
        parkDescription
    }
    func set(parkDescription: String) {
        self.parkDescription = parkDescription
    }
    
    var description: String {
        """
        parkName: \(parkName)
        parkLocation: \(parkLocation)
        dateFormed: \(dateFormed) 
        area: \(area)
        link: \(link)
        location: \(location)
        imageLink: \(imageLink)
        parkDescription: \(parkDescription)
        """
    }
    
    init(parkName: String, parkLocation: String, dateFormed: String, area: String, link: String, location: CLLocation?, imageLink: String, parkDescription: String) {
        self.parkName = parkName
        self.parkLocation = parkLocation
        self.dateFormed = dateFormed
        self.area = area
        self.link = link
        self.location = location
        self.imageLink = imageLink
        self.parkDescription = parkDescription
    }
    
    convenience init() {
        self.init(parkName: "Unknown", parkLocation: "Unknown", dateFormed: "Unknown", area: "Unknown", link: "Unknown", location: nil, imageLink: "Unknown", parkDescription: "Unknown")
    }
}

let p1 : Park = Park()
print("\(p1)")

let p2 : Park = Park(parkName: "Acadia National Park", parkLocation: "Maine", dateFormed: "1919-02-26", area: "47,389.67 acres (191.8 square km)", link: "TBD", location: nil, imageLink: "TBD", parkDescription: "TBD")

print("\(p2)")

p2.set(link:"http://en.wikipedia.org/wiki/Acardia_National_Park")

print("\(p2)")

let p3 : Park = Park(parkName: "Ab", parkLocation: "Maine", dateFormed: "1919-02-26", area: "47,389.67 acres (191.8 square km)", link: "TBD", location: nil, imageLink: "TBD", parkDescription: "TBD")

print("\(p3)")
