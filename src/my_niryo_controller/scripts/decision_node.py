class DecisionNode:
    # 决策 1：是否要去抓取
    def decide_pickup(self, piece_pose):
        if piece_pose is None:
            return "IGNORE"
        return "PICK"

    # 决策 2：放置还是退回原处
    def decide_placement(self, slot_pose):
        if slot_pose is None:
            return "RETURN_PIECE"
        return "PLACE_PIECE"