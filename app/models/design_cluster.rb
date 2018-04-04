class DesignCluster < MirrawBase

  def self.assign_cluster(design_ids)
    fields_to_insert = %w{design_id cluster_id}
    design_ids.each_slice(500) do |ids|
      self.import fields_to_insert, ImageSearch.get_data(ids), on_duplicate_key_update: { conflict_target: [:design_id], columns: [:cluster_id] }
      self.where(design_id: ids).update_all(state: 'processed')
    end
  end
end