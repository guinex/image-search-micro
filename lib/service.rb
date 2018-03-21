module Service
  class ClusterQueue < Mirraw::DesignCluster
    def send_cluster_data(data)
    end

    ['new', 'update'].each do |method_name|
      send :define_singleton_method, "identify_#{method_name}_cluster" do |*args|
        where(state: 'new').pluck(:design_id)
      end
    end
  end


  class ClusterRelation < ImageSearch::ParentClusterRelation
    def process(data)
    end

    def response
    end
  end
end
