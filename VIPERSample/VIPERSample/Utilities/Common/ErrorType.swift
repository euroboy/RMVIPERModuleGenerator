import Foundation

enum ErrorType: Error
{
    case undefined
    case noConnection
    case request(error: Error?)
    case custom(error: Error?, details: String?)
    case message(_ message: String?)
}

extension ErrorType
{
    var errorDescription: String
    {
        switch self
        {
        case .noConnection: return "Seems you don't have internet connection"
        case .request(error: let error): return error?.localizedDescription ?? "Something went wrong"
        case .custom(error: let error, details: let details): return details ?? (error?.localizedDescription ?? "Something went wrong")
        case .message(message: let details): return details ?? "Something went wrong"
        default: return "Something went wrong"
        }
    }
    
    var errorCode: Int
    {
        switch self
        {
        case .noConnection: return NSURLErrorNotConnectedToInternet
        case .request(error: let error): return error?.code ?? NSURLErrorUnknown
        case .custom(error: let error, details: _): return error?.code ?? NSURLErrorUnknown
        default: return NSURLErrorUnknown
        }
    }
}
