class Mood < ApplicationRecord
  belongs_to :message, optional: true
  belongs_to :user, optional: true

  def self.chart_date
    # order(created_at: :asc).pluck('created_at', 'status').to_h
    group_by_day(:created_at, format: "%m月%d日", series: false ).sum(:status)
  end
end
