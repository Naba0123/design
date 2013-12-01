FactoryGirl.define do
  factory :arale, class: User do
    user_id  'arale'
    name     '則巻アラレ'
    country  'JP'
    address  'ゲンゴロウ島ペンギン村モモンガ1番地'
    phone    '00011112222'
    job      'ペンギン村村立中学園1年'
    birthday '1967-05-31'
    gender   1
  end
end

FactoryGirl.define do
  factory :akane, class: User do
    user_id  'akane'
    name     '木緑あかね'
    country  'US'
    address  'ゲンゴロウ島ペンギン村カモノハシ4番地'
    phone    '00011112222'
    job      'ペンギン村村立中学園1年'
    birthday '1967-12-21'
    gender   1
  end
end

FactoryGirl.define do
  factory :taro, class: User do
    user_id  'taro'
    name     '空豆タロウ'
    country  'JP'
    address  'ゲンゴロウ島ペンギン村アルマジロ9番地'
    phone    '00011112222'
    job      'ペンギン村村立中学園3年'
    birthday '1967-09-24'
    gender   0
  end
end
