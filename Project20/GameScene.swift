//
//  GameScene.swift
//  Project20
//
//  Created by user on 05/08/21.
//

import SpriteKit

class GameScene: SKScene {
    
    //MARK: - Attributes
    
    var gameTimer: Timer?
    var fireworks = [SKNode]()
    
    let leftEdge = -22
    let rightEdge = 1024 + 22
    
    var score = 0 {
        didSet{
            //implementar
        }
    }
    
    override func didMove(to view: SKView) {
        
        let background = SKSpriteNode(imageNamed: "background")
        background.position = CGPoint(x: 512, y: 384)
        background.blendMode = .replace
        background.zPosition = -1
        addChild(background)
        
        //A timer that repeats every 6 seconds
        gameTimer = Timer.scheduledTimer(timeInterval: 6, target: self, selector: #selector(launchFireworks), userInfo: nil, repeats: true)
    }
    
    //MARK: - Methods
    
    func createFireworks(xMovement: CGFloat, x: Int, y:Int) {
        let node = SKNode()
        node.position = CGPoint(x: x, y: y)
        
        let firework = SKSpriteNode(imageNamed: "rocket")
        firework.colorBlendFactor = 1
        firework.name = "firework"
        node.addChild(firework)
    }
    
    @objc func launchFireworks() {
        
    }
}
