class Admin::SubscriberListCondition < Condition::Admin
  hstore_accessor :data,
    ids: :string

  def matches(subscriber)
    ids.split(",").include?(subscriber.id)
  end
end