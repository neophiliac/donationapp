module DonationsHelper
  def formatted_donor(donation)
    content_tag(:div, join_with([
      content_tag(:span, join_with([
        donation.contact_name, donation.company_name
      ], " - "), :class => "contact_name"),
      donation.address1,
      donation.address2,
      join_with([
        join_with([ donation.city, donation.state ], ", "), 
        donation.zipcode], " "),
    ], "<br>"), :class => "contact")
  end

  def formatted_status(donation)
    case donation.status.to_sym
    when :to_be_picked_up
      "Pickup on #{donation.pickup_date}"
    when :on_hand
      "On hand"
    when :sold
      "Sold"
    else
      donation.status
    end
  end

private
  def join_with(values, joinee)
    values.reject(&:empty?).join(joinee)
  end
end
