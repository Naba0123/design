FactoryGirl.define do
  factory :arale, :class => User do
    account  'arale'
    password 'hoge'
    password_confirmation 'hoge'
    name     '則巻アラレ'
    country  'JP'
    address  'ゲンゴロウ島ペンギン村モモンガ1番地'
    phone    '00011112222'
    job      'ペンギン村村立中学園1年'
    job_kind_id '1'
    birthday '1967-05-31'
    gender   1
  end

  factory :akane, :class => User do
    account  'akane'
    password 'hoge'
    password_confirmation 'hoge'
    name     '木緑あかね'
    country  'US'
    address  'ゲンゴロウ島ペンギン村カモノハシ4番地'
    phone    '00011112222'
    job      'ペンギン村村立中学園1年'
    job_kind_id '2'
    birthday '1967-12-21'
    gender   1
  end

  factory :taro, :class => User do
    account  'taro'
    password 'hoge'
    password_confirmation 'hoge'
    name     '空豆タロウ'
    country  'JP'
    address  'ゲンゴロウ島ペンギン村アルマジロ9番地'
    phone    '00011112222'
    job      'ペンギン村村立中学園3年'
    job_kind_id '3'
    birthday '1967-09-24'
    gender   0
  end
end
