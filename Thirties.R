

turn <- function() {
    dice_left = 6
    plays = 0
    final = c()
    
    while (dice_left>0){
        plays = plays + 1
        bad = TRUE
        throw = sample.int(6,size = dice_left, replace = TRUE)
        
        for (die in throw){
            
            if (die>=5){
                final = append(final, die)
                dice_left = dice_left - 1
                bad = FALSE
            }
        }
        if (bad) {
            final = append(final, max(throw))
            dice_left = dice_left - 1
        }
    }
    
    final_sum = sum(final)
    return(final_sum)
}



