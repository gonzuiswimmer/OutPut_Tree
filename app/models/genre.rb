class Genre < ActiveHash::Base
  self.data = [
    {id: 0, name: '---'},
    {id: 1, name: 'camp'},
    {id: 2, name: 'blog'},
    {id: 3, name: 'youtube'},
    {id: 4, name: 'instagram'},
    {id: 5, name: 'tiktok'},
    {id: 6, name: 'resale'},
    {id: 7, name: 'affiliate'},
    {id: 8, name: 'consulting'},
    {id: 9, name: 'part_time_job'},
    {id: 10, name: 'programming'},
    {id: 12, name: 'design'},
    {id: 13, name: 'free_lance'},
    {id: 14, name: 'handicraft'},
    {id: 15, name: 'others'}
  ]

  include ActiveHash::Associations
  has_many :outputs

end