//
//  RecipeInfoViewController.swift
//  FavRecipe
//
//  Created by スマート・ナビ on 2021/05/23.
//

import UIKit

class RecipeInfoViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate,UITextFieldDelegate{
    
    
    var num = Int()
    
    var recipe: Recipe!
    var recipeImage:PictureData!
    
    
    @IBOutlet var recipeImageView: UIImageView!
    @IBOutlet var recipeTitleTextField: UITextField!
    @IBOutlet var recipeURLTextField: UITextField!
    @IBOutlet var memoTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        //recipeImageView.image = recipeImage.
        recipeTitleTextField.text = recipe.recipeTitle
        recipeURLTextField.text = recipe.recipeURL
        memoTextField.text = recipe.memo
    }
    
    
    
    
    
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        recipeTitleTextField.resignFirstResponder()
        recipeURLTextField.resignFirstResponder()
        memoTextField.resignFirstResponder()
        return true
    }
//keyboardが消える
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func addRecipe(_ sender: Any) {
        
        let newRecipe = Recipe()
        newRecipe.recipeTitle = recipeTitleTextField.text!
        newRecipe.recipeURL = recipeURLTextField.text!
        newRecipe.memo = memoTextField.text!
        
       
        dismiss(animated: true, completion: nil)
        
        
        let alert = UIAlertController(
            title: "保存完了",
            message: "レシピの登録が完了しました",
            preferredStyle: .alert
        )
        
        alert.addAction(UIAlertAction(
            title: "OK",
            style: .default,
            handler:nil
            
        ))
        present(alert, animated: true, completion: nil)
        
    }
    
    
    @IBAction func cancel() {
        self.navigationController?.popViewController(animated: true)
        
//        dismiss(animated: true, completion: nil)
    }
}


