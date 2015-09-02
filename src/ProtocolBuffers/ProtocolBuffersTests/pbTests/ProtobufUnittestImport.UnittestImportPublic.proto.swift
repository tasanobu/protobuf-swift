// Generated by the protocol buffer compiler.  DO NOT EDIT!
// Source file unittest_import_public.proto

import Foundation
import ProtocolBuffers


internal extension ProtobufUnittestImport{}

internal func == (lhs: ProtobufUnittestImport.PublicImportMessage, rhs: ProtobufUnittestImport.PublicImportMessage) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasE == rhs.hasE) && (!lhs.hasE || lhs.e == rhs.e)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

internal extension ProtobufUnittestImport {
  internal struct UnittestImportPublicRoot {
    internal static var sharedInstance : UnittestImportPublicRoot {
     struct Static {
         static let instance : UnittestImportPublicRoot = UnittestImportPublicRoot()
     }
     return Static.instance
    }
    internal var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
    }
    internal func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final internal class PublicImportMessage : GeneratedMessage, GeneratedMessageProtocol {
    private(set) var hasE:Bool = false
    private(set) var e:Int32 = Int32(0)

    required internal init() {
         super.init()
    }
    override internal func isInitialized() -> Bool {
     return true
    }
    override internal func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasE {
        try output.writeInt32(1, value:e)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override internal func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasE {
        serialize_size += e.computeInt32Size(1)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    internal class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<ProtobufUnittestImport.PublicImportMessage> {
      var mergedArray = Array<ProtobufUnittestImport.PublicImportMessage>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    internal class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> ProtobufUnittestImport.PublicImportMessage? {
      return try ProtobufUnittestImport.PublicImportMessage.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    internal class func parseFromData(data:NSData) throws -> ProtobufUnittestImport.PublicImportMessage {
      return try ProtobufUnittestImport.PublicImportMessage.Builder().mergeFromData(data, extensionRegistry:ProtobufUnittestImport.UnittestImportPublicRoot.sharedInstance.extensionRegistry).build()
    }
    internal class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.PublicImportMessage {
      return try ProtobufUnittestImport.PublicImportMessage.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    internal class func parseFromInputStream(input:NSInputStream) throws -> ProtobufUnittestImport.PublicImportMessage {
      return try ProtobufUnittestImport.PublicImportMessage.Builder().mergeFromInputStream(input).build()
    }
    internal class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.PublicImportMessage {
      return try ProtobufUnittestImport.PublicImportMessage.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    internal class func parseFromCodedInputStream(input:CodedInputStream) throws -> ProtobufUnittestImport.PublicImportMessage {
      return try ProtobufUnittestImport.PublicImportMessage.Builder().mergeFromCodedInputStream(input).build()
    }
    internal class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.PublicImportMessage {
      return try ProtobufUnittestImport.PublicImportMessage.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    internal class func getBuilder() -> ProtobufUnittestImport.PublicImportMessage.Builder {
      return ProtobufUnittestImport.PublicImportMessage.classBuilder() as! ProtobufUnittestImport.PublicImportMessage.Builder
    }
    internal func getBuilder() -> ProtobufUnittestImport.PublicImportMessage.Builder {
      return classBuilder() as! ProtobufUnittestImport.PublicImportMessage.Builder
    }
    internal override class func classBuilder() -> MessageBuilder {
      return ProtobufUnittestImport.PublicImportMessage.Builder()
    }
    internal override func classBuilder() -> MessageBuilder {
      return ProtobufUnittestImport.PublicImportMessage.Builder()
    }
    internal func toBuilder() throws -> ProtobufUnittestImport.PublicImportMessage.Builder {
      return try ProtobufUnittestImport.PublicImportMessage.builderWithPrototype(self)
    }
    internal class func builderWithPrototype(prototype:ProtobufUnittestImport.PublicImportMessage) throws -> ProtobufUnittestImport.PublicImportMessage.Builder {
      return try ProtobufUnittestImport.PublicImportMessage.Builder().mergeFrom(prototype)
    }
    override internal func writeDescriptionTo(inout output:String, indent:String) throws {
      if hasE {
        output += "\(indent) e: \(e) \n"
      }
      unknownFields.writeDescriptionTo(&output, indent:indent)
    }
    override internal var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasE {
               hashCode = (hashCode &* 31) &+ e.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override internal class func className() -> String {
        return "ProtobufUnittestImport.PublicImportMessage"
    }
    override internal func className() -> String {
        return "ProtobufUnittestImport.PublicImportMessage"
    }
    override internal func classMetaType() -> GeneratedMessage.Type {
        return ProtobufUnittestImport.PublicImportMessage.self
    }
    //Meta information declaration end

    final internal class Builder : GeneratedMessageBuilder {
      private var builderResult:ProtobufUnittestImport.PublicImportMessage = ProtobufUnittestImport.PublicImportMessage()
      internal func getMessage() -> ProtobufUnittestImport.PublicImportMessage {
          return builderResult
      }

      required override internal init () {
         super.init()
      }
      var hasE:Bool {
           get {
                return builderResult.hasE
           }
      }
      var e:Int32 {
           get {
                return builderResult.e
           }
           set (value) {
               builderResult.hasE = true
               builderResult.e = value
           }
      }
      func setE(value:Int32) -> ProtobufUnittestImport.PublicImportMessage.Builder {
        self.e = value
        return self
      }
      internal func clearE() -> ProtobufUnittestImport.PublicImportMessage.Builder{
           builderResult.hasE = false
           builderResult.e = Int32(0)
           return self
      }
      override internal var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      internal override func clear() -> ProtobufUnittestImport.PublicImportMessage.Builder {
        builderResult = ProtobufUnittestImport.PublicImportMessage()
        return self
      }
      internal override func clone() throws -> ProtobufUnittestImport.PublicImportMessage.Builder {
        return try ProtobufUnittestImport.PublicImportMessage.builderWithPrototype(builderResult)
      }
      internal override func build() throws -> ProtobufUnittestImport.PublicImportMessage {
           try checkInitialized()
           return buildPartial()
      }
      internal func buildPartial() -> ProtobufUnittestImport.PublicImportMessage {
        let returnMe:ProtobufUnittestImport.PublicImportMessage = builderResult
        return returnMe
      }
      internal func mergeFrom(other:ProtobufUnittestImport.PublicImportMessage) throws -> ProtobufUnittestImport.PublicImportMessage.Builder {
        if other == ProtobufUnittestImport.PublicImportMessage() {
         return self
        }
        if other.hasE {
             e = other.e
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      internal override func mergeFromCodedInputStream(input:CodedInputStream) throws -> ProtobufUnittestImport.PublicImportMessage.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      internal override func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.PublicImportMessage.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let tag = try input.readTag()
          switch tag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8 :
            e = try input.readInt32()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:tag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
