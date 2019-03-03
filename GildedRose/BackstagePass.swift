class BackstagePass : AnItem {
    func update(_ item: Item) {
        if item.quality < 50 {
            item.quality+=1
            
            if item.sellIn < 11 {
                item.quality+=1
            }
            
            if item.sellIn < 6 {
                item.quality+=1
            }
        }
        item.sellIn-=1
        
        if item.sellIn < 0 {
            item.quality = 0
        }
    }
}
