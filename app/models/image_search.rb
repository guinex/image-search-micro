class ImageSearch < ImageSearchBase

  def self.get_data(design_ids)
    where(design_id: design_ids).pluck(:design_id, :cluster_id)
  end
end