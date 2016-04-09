import UIKit

//: ## Saving Data in iOS: Challenge 7 - XML
//:
//: Chances are, if you are doing app development for a living, you'll run into XML that needs to be parsed. iOS does include a parsing object called NSXMLParser that does all the heavy lifting for you although it can be a little bit gnarly when you first run into it.
//:
//: In this tutorial, you'll parse a very simple XML file. This parsing will essentially convert an XML document into an object.
//:
//: ----
//:
//: The very first thing to do is create an object to contain the XML data. This object is already provided for you. You'll notice that its properties match the various nodes contained within rwdevcon.xml. (Note: To view rwdevcon.xml, expand the resources folder of the playground).
//:
//: The object is also a type of CustomStringConvertible. This simply means that the object can be printed to the console.

class RWDevConSession: CustomStringConvertible {
  var sessionId = 0
  var name = ""
  var instructor = ""
  var track = ""
  
  var description: String {
    return "Session \(sessionId): \(name) by \(instructor) - \(track) Track"
  }
}

//: Now is the time to create your XML parsing object. Call the object SessionParser and make it a subclass of NSObject. Also, make it implement the NSXMLParserDelegate protocol.

//class  {
  
//: This object should have four properties. It should contain an NSXMLPaser. Call it xmlParser. It should contain an array of RWDevConSession objects. Another variable called currentSession should be an optional RWDevConSession object. Finally, it should have a string called xmlText.
  

  
//: Next comes the initializer. It should take in an NSData which is the xml data.

//: Here's the code of init()
//    self.xmlParser = NSXMLParser(data: xml)
  
 
//: Here's the code used to kick off the parsing. This has also been provided for you.

//  func parse() -> [RWDevConSession] {
//    xmlParser.delegate = self
//    xmlParser.parse()
//    return sessions
//  }
  
//: Add the code to the following method body:

//  func parser(parser: NSXMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String]) {

//  }
  
//: Add the code to the following method body:

//  func parser(parser: NSXMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {

//  }
  
//: Add the code to the following method body:

//  func parser(parser: NSXMLParser, foundCharacters string: String) {

//  }
  
//}

//: Once you have the parser written, the following code will work. It will read the xml and print out three different sessions to the console. If you find yourself stuck, check out the completed challenge playground.

/**

var sessions = [RWDevConSession]()

if let xmlUrl = NSBundle.mainBundle().URLForResource("rwdevcon", withExtension: "xml") {
  do {
    let xmlText = try String(contentsOfURL: xmlUrl)
    if let xmlData = xmlText.dataUsingEncoding(NSUTF8StringEncoding) {
      let parser = SessionsParser(withXML: xmlData)
      let sessions = parser.parse()
      for session in sessions {
        print(session)
      }
    }
  } catch {
    print(error)
  }
}

**/
