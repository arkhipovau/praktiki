class Moderator < User
    has_many :moderated_contents, class_name: 'Content', foreign_key: 'moderator_id'
  end