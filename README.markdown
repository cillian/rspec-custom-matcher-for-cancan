Simple rspec custom matcher for CanCan authorisation
====================================================

Before
------

If you use rspec and CanCan and you have some specs like...

  ability = Ability.new(@guest)
  ability.can?(create, Post).should be_true

  ability = Ability.new(@guest)
  ability.cannot?(:destroy, Comment).should be_true

  ability = Ability.new(@guest)
  ability.can?(edit, @other_users_post).should be_true

After
-----

You could use this simple custom matcher to make them more readable like...

  @member.should have_ability_to(:create, Post)
  @guest.should_not have_ability_to(:destroy, Comment)
  @admin.should have_ability_to(edit, @other_users_post)
