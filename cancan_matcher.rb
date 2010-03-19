module CustomMatchers

  Spec::Matchers.define :have_ability_to do |action, object|
    match do |user|
      ability = Ability.new(user)
      ability.can?(action,object)
    end

    failure_message_for_should do |user|
      "expected the user #{user} to have the ability to #{action} #{object}"
    end

    failure_message_for_should_not do |user|
      "expected the user #{user} NOT to have the ability to #{action} #{object}"
    end
  end

end
