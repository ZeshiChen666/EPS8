class DecisionNode:
    # Decision 1: Should we grab it?
    def decide_pickup(self, piece_pose):
        if piece_pose is None:
            return "IGNORE"
        return "PICK"

    # Decision 2: Place or return to its original location?
    def decide_placement(self, slot_pose):
        if slot_pose is None:
            return "RETURN_PIECE"
        return "PLACE_PIECE"