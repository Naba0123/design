FactoryGirl.define do

  # midori: admin
  factory :midori, :class => User do
    account  'midori'
    password 'hoge'
    password_confirmation 'hoge'
    name     '則巻みどり'
    country  'JP'
    address  'ゲンゴロウ島ペンギン村モモンガ1番地'
    phone    '00011112222'
    job      'ペンギン村村立中学園教員'
    job_kind_id '1'
    birthday '1957-08-13'
    gender   2
  end


  # gazilla: participant
  factory :participant_gazilla, class: Participant do
    wish        1
    wish_course 1
    teacher     '則巻みどり'
  end

  factory :gazilla, :class => User do
    account  'gazilla'
    password 'hoge'
    password_confirmation 'hoge'
    name     '則巻ガジラ'
    country  'JP'
    address  'ゲンゴロウ島ペンギン村モモンガ1番地'
    phone    '00011112222'
    job      'ガッちゃん'
    job_kind_id '1'
    birthday '1967-05-31'
    gender   0
    association :participant, factory: :participant_gazilla
  end


  # arale: student
  factory :student_arale, class: Student do
    grade             1
    department        1
    research_subject  1
    research_room     1
    student_number    '11T5099A'
    guarantor_name    '則巻千兵衛'
    guarantor_address 'ゲンゴロウ島ペンギン村モモンガ1番地'
    guarantor_phone   '00099991111'
    entry_date        '1980-04-01'
  end

  factory :arale, :class => User do
    account  'arale'
    password 'hoge'
    password_confirmation 'hoge'
    name     '則巻アラレ'
    country  'JP'
    address  'ゲンゴロウ島ペンギン村モモンガ1番地'
    phone    '00011112222'
    job      'ペンギン村村立高学園2年'
    job_kind_id '1'
    birthday '1967-05-31'
    gender   2
    association :student, factory: :student_arale
  end


  # akane: [participant, student]
  factory :participant_akane, class: Participant do
    wish        1
    wish_course 1
    teacher     '栗頭大五郎'
  end

  factory :student_akane, class: Student do
    grade             1
    department        1
    research_subject  1
    research_room     1
    student_number    '84T5099A'
    guarantor_name    '木緑紺'
    guarantor_address 'ゲンゴロウ島ペンギン村カモノハシ4番地'
    guarantor_phone   '00099991111'
    entry_date        '1984-04-01'
  end

  factory :akane, :class => User do
    account  'akane'
    password 'hoge'
    password_confirmation 'hoge'
    name     '木緑あかね'
    country  'US'
    address  'ゲンゴロウ島ペンギン村カモノハシ4番地'
    phone    '00011112222'
    job      'ペンギン村村立高学園2年'
    job_kind_id '2'
    birthday '1967-12-21'
    gender   2
    association :participant, factory: :participant_akane
    association :student, factory: :student_akane
  end


  # taro: [student, graduate]
  factory :student_taro, class: Student do
    grade             1
    department        1
    research_subject  1
    research_room     1
    student_number    '78T5099A'
    guarantor_name    '空豆クリキントン'
    guarantor_address 'ゲンゴロウ島ペンギン村アルマジロ9番地'
    guarantor_phone   '00099991111'
    entry_date        '1982-04-01'
  end

  factory :graduate_taro, class: Graduate do
    is_change false
    finish_date '1985-03-31'
    is_entered true
  end

  factory :taro, :class => User do
    account  'taro'
    password 'hoge'
    password_confirmation 'hoge'
    name     '空豆タロウ'
    country  'JP'
    address  'ゲンゴロウ島ペンギン村アルマジロ9番地'
    phone    '00011112222'
    job      '警察官'
    job_kind_id '3'
    birthday '1967-09-24'
    gender   1
    association :student, factory: :student_taro
    association :graduate, factory: :graduate_taro
  end
end
