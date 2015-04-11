module ApplicationHelper
  def link_to_add_fields(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    link_to(name, '#', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
  end

  def opening_anchor_tag_for_candidate(candidate = nil)
    anchor_base ="<a href='#' class='candidate-inner-wrapper' "
    if candidate
      anchor = "#{anchor_base} data-title='#{candidate.name}' "
      if candidate.image.present?
        anchor = "#{anchor} data-largesrc='#{asset_path(candidate.image).to_s}' "
      else
        anchor = "#{anchor} data-largesrc='#{asset_path("placeholder.jpg").to_s}' "
      end
      if candidate.isGovernor?
        anchor = "#{anchor} data-filter ='#{candidate.political_party.name}' data-color='#{candidate.political_party.color}'"
      else
        anchor = "#{anchor} data-filter='#{candidate.geographical_area.name}' data-color='#{candidate.geographical_area.color}'"
      end
      if candidate.bio.present?
        anchor = "#{anchor} data-bio='#{candidate.bio}'"
      end
      if candidate.proposals.present?
        anchor = "#{anchor} data-proposals='#{candidate.proposals}'"
      end
      anchor = "#{anchor} data-milestone-count='#{candidate.milestones.count}'"
      candidate.milestones.each_with_index do |milestone, i|
        anchor = "#{anchor} data-milestone-#{i+1}-position='#{milestone.position}'"
        if milestone.proposals.present?
          anchor = "#{anchor} data-milestone-#{i+1}-proposals='#{milestone.proposals}'"
        end
        if milestone.accomplished.present?
          anchor = "#{anchor} data-milestone-#{i+1}-accomplished='#{milestone.accomplished}'"
        end
      end
      "#{anchor}>".html_safe
    else
      "#{anchor_base}>".html_safe
    end
  end
end
