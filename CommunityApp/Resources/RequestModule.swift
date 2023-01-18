import Foundation
import Alamofire
import SwiftyJSON
import CoreLocation

class RequestModule {
    
   //https://www.vdh.virginia.gov/coronavirus/protect-yourself/covid-19-testing/covid-19-testing-sites/#locator
    
    let location = LocationManager.shared
    let pts = Points.shared
    
    func getVaccines(){
        location.checkIfLocationServiceEnabled()
        let checkLoc = location.locManager?.location?.coordinate
        let curLoc = checkLoc ?? CLLocationCoordinate2D(latitude: 38.70791026989636, longitude: -77.159656563662)
        let url = "https://api.us.castlighthealth.com/vaccine-finder/v1/provider-locations/search?medicationGuids=019a66d4-064b-8a42-5279-d4eba534afc9,018a22d4-064b-4a42-8279-d4eba511afc6,b4d4d673-4279-477d-a2d4-d9921c60e7a3,25e72c3c-8f6c-4738-9638-08911a400f71,25e72c3c-8f6c-4738-9638-08911a400e70,018b22d2-054b-4d42-8279-d4efb511aec6,65e72c3d-8f6d-4739-9638-08911a400a91,d0d2c703-1638-4623-85a8-d70c0da14dc7,4d9af7f8-2acc-4ee2-b2cc-c5ebcfc12890,25f1389c-5597-47cc-9a9d-3925d60d9c21,a2c89970-ea30-44bd-b024-e60ac906a05e,779bfe52-0dd8-4023-a183-457eb100fccc,6e9b0945-9b98-4df4-8d10-c42f526eed14,a84fb9ed-deb4-461c-b785-e17c782ef88b,784db609-dc1f-45a5-bad6-8db02e79d44f,cd62a2bb-1e1e-4252-b441-68cf1fe734e9,6537795d-19bc-45a3-8706-e3d5a81ba997&lat=\(curLoc.latitude)&long=\(curLoc.longitude)&appointments=false"
        
        debugPrint(url)
        AF.request(url).response{ response in
            switch response.result{
            case .success(let data):
                do{
                    
                    let json = JSON(data)
                    //debugPrint(json)
                    let providerListRaw = json["providers"]
                    var providerList = [Provider]()
                    var pinList = [Pin]()
                    var count = 0
                    while count < 20{
                        providerList.append(Provider(name: providerListRaw[count]["name"], address1: providerListRaw[count]["address1"], address2: providerListRaw[count]["address2"], city: providerListRaw[count]["city"], state: providerListRaw[count]["state"], zip: providerListRaw[count]["zip"], distance: providerListRaw[count]["distance"], latitude: providerListRaw[count]["lat"], longitude: providerListRaw[count]["long"]))
                        
                        count = count+1
                    }
                    //debugPrint(providerList)
                    count = 0
                    while count < providerList.count{
                        pinList.append(Pin(name: providerList[count].name, type: "Vacc", icon: "syringe", coordinate: CLLocationCoordinate2D(latitude: Double(providerList[count].latitude)!, longitude: Double(providerList[count].longitude)!), dist: Double(providerList[count].distance)!, address: "\(providerList[count].address1)\n\(providerList[count].city), \(providerList[count].state) \(providerList[count].zip)"))
                        count = count + 1
                    }
                    self.pts.addPoints(list: pinList)
                    debugPrint(self.pts.allPoints)
                }
            case .failure(let error):
                debugPrint(error.localizedDescription)
            }
        }
    }
}

struct respData: Decodable{
    let providers: [Initial]
}
struct Initial: Decodable{
    let providers: [Provider]
    let current_page: Int
    let total_pages: Int
}

struct Provider: Decodable{
    let name: String
    let address1: String
    let address2: String
    let city: String
    let state: String
    let zip: String
    let distance: String
    let latitude: String
    let longitude: String
    
    init(name: JSON, address1: JSON, address2: JSON, city: JSON, state: JSON, zip: JSON, distance: JSON, latitude: JSON, longitude: JSON){
        self.name = name.rawString()!
        self.address1 = address1.rawString()!
        self.address2 = address2.rawString()!
        self.city = city.rawString()!
        self.state = state.rawString()!
        self.zip = zip.rawString()!
        self.distance = distance.rawString()!
        self.latitude = latitude.rawString()!
        self.longitude = longitude.rawString()!
        
        
    }
    
    func convertToPin(){
        
    }
}
