        case .togglePlayCollage:
            newState.isPlayingCollage.toggle()
        }
        
        return newState
    }
    
    private mutating func changeCollage(_ action: CollageModification,
                                        state: AppState) -> AppState {
        
        var newState = state
        newState.collage = collageReducer.reduce(newState.collage, action)
        
        switch action {
        case .removeShape, .removeText, .removeSticker:
            newState.selectedElement = nil
            
        default:
            break
        }
        
        return newState
    }
    
}


