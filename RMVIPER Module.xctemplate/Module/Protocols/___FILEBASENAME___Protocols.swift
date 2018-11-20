//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

//VIEW
protocol ___VARIABLE_productName:identifier___ViewControllerProtocol
{
    var presenter: ___VARIABLE_productName:identifier___PresenterProtocol? { get set }
    
    // PRESENTER -> VIEW
    
}

//INTERACTOR
protocol ___VARIABLE_productName:identifier___InteractorInputProtocol
{
    var presenter: ___VARIABLE_productName:identifier___InteractorOutputProtocol? { get set }
    
    // PRESENTER -> INTERACTOR
    
}

protocol ___VARIABLE_productName:identifier___InteractorOutputProtocol
{
    // INTERACTOR -> PRESENTER
    
}

//PRESENTER
protocol ___VARIABLE_productName:identifier___PresenterProtocol
{
    var view: ___VARIABLE_productName:identifier___ViewControllerProtocol? { get set }
    var interactor: ___VARIABLE_productName:identifier___InteractorInputProtocol? { get set }
    var wireFrame: ___VARIABLE_productName:identifier___WireframeProtocol? { get set }
    
    // VIEW -> PRESENTER
    
}

//ROUTER
protocol ___VARIABLE_productName:identifier___WireframeProtocol
{
    
}
