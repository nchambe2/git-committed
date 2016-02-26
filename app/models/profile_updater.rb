class ProfileUpdater
  def call(user, params)
    user.update_attributes(update_user(params))
    user.profile.update_attributes(update_profile(params))
    update_user_lang(user, params.fetch(:languages, []))
    update_user_editors(user, params.fetch(:editors, []))
    update_user_operating_systems(user, params.fetch(:operating_systems, []))
    update_user_skills(user, params.fetch(:skills, []))
    update_user_relationship_types(user, params.fetch(:relationship_types, []))
  end

  private
   def update_profile(params)
    params.require(:profile).permit(:about_me, :github_link, :picture)
   end

  def update_user(params)
    params.require(:user).permit(:username,
                                 :first_name,
                                 :last_name,
                                 :email,
                                 :gender_id,
                                 :language_id,
                                 :text_editor_id,
                                 :operating_system_id,
                                 :skill_id,
                                 :seeking_id,
                                 :sexual_preference_id,
                                 :sexual_orientation_id,
                                 :relationship_type_id)
  end

  def update_user_lang(user, languages)
    languages.each do |language|
      selection_value = language.last
      if selection_value == "1"
       lang = Language.find_by(id: language.first)
       user.languages.push(lang) unless user.languages.include?(lang)
      elsif selection_value == "0"
        lang = Language.find_by(id: language.first)
        user.languages.delete(lang)
      end
    end
  end

  def update_user_editors(user, editors)
    editors.each do |editor|
      selection_value = editor.last
      if selection_value == "1"
        text_editor = TextEditor.find_by(id: editor.first.to_i)
        user.text_editors.push(text_editor) unless user.text_editors.include?(text_editor)
      elsif selection_value == "0"
        text_editor = TextEditor.find_by(id: editor.first.to_i)
        user.text_editors.delete(text_editor)
      end
    end
  end

  def update_user_operating_systems(user, operating_systems)
    operating_systems.each do |op_system|
      selection_value = op_system.last
      if selection_value == "1"
        o_s = OperatingSystem.find_by(id: op_system.first.to_i)
        user.operating_systems.push(o_s) unless user.operating_systems.include?(o_s)
      elsif selection_value == "0"
        o_s = OperatingSystem.find_by(id: op_system.first.to_i)
        user.operating_systems.delete(o_s)
      end
    end
  end

 def update_user_skills(user, skills)
   skills.each do |skill|
      selection_value = skill.last
      if selection_value == "1"
        s = Skill.find_by(id: skill.first.to_i)
        user.skills.push(s) unless user.skills.include?(s)
      elsif selection_value == "0"
        s = Skill.find_by(id: skill.first.to_i)
        user.skills.delete(s)
      end
    end
 end

 def update_user_relationship_types(user, relationship_types)
   relationship_types.each do |rt|
      selection_value = rt.last
      if selection_value == "1"
        r = RelationshipType.find_by(id: rt.first.to_i)
        user.relationship_types.push(r) unless user.relationship_types.include?(r)
      elsif selection_value == "0"
        r = RelationshipType.find_by(id: rt.first.to_i)
        user.relationship_types.delete(r)
      end
    end
 end

end


# ProfileUpdater.call(user, {skills: [:ruby, :python]})
