class Admin::MultiplesCondition < Condition::Admin
  hstore_accessor :additional_data,
    multiple: :integer,
    from: :integer

  def matches(subscriber)
    if subscriber.id > from
      subscriber.id % multiple == 0
    else
      false
    end
  end
end