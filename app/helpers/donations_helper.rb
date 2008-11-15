module DonationsHelper
  def formatted_donor(donation)
    content_tag(:div, join_with([
      content_tag(:span, join_with([
        h(donation.contact_name), h(donation.company_name)
      ], " - "), :class => "contact_name"),
      h(donation.address1),
      h(donation.address2),
      join_with([
        join_with([ h(donation.city), h(donation.state) ], ", "), 
        h(donation.zipcode)], " "),
    ], "<br>"), :class => "contact")
  end

  def formatted_status(donation)
    case donation.status.to_sym
    when :to_be_picked_up
      "Pickup on #{donation.pickup_date}"
    when :on_hand
      "On hand"
    when :sold
      "Sold for #{donation.sale_price}"
    else
      donation.status
    end
  end

private
  def join_with(values, joinee)
    values.reject(&:empty?).join(joinee)
  end
end
