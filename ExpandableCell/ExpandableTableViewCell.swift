import UIKit

class ExpandableTableViewCell: UITableViewCell {
    
    var isTeamFollowed:((Bool) -> (Void))?

    @IBOutlet weak var buttonsStackView: UIStackView! {
        didSet {
            buttonsStackView.isHidden = true
        }
    }

    @IBOutlet weak var followButton: UIButton!
    @IBOutlet weak var unfollowButton: UIButton!
    @IBOutlet weak var followingTeamImageView: UIImageView!
    
    @IBAction func pressedFollowButton(_ sender: Any) {
        if followingTeamImageView.isHidden {
            followingTeamImageView.isHidden = !followingTeamImageView.isHidden
            followButton.setTitle("Unfollow", for: .normal)
        } else {
            followingTeamImageView.isHidden = true
            followButton.setTitle("Follow", for: .normal)
        }
    }
    

    @IBAction func pressedBlockButton(_ sender: Any) {
        print("This team is now blocked")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        followingTeamImageView.isHidden = true
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        followingTeamImageView.isHidden = true
    }
    
}
