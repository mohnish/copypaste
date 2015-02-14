FactoryGirl.define do
  factory :entry do
    sequence(:title) { |n| "Lorem #{n}" }
    content "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis quo recusandae autem vel illum quasi maxime animi accusamus, obcaecati consequatur quisquam unde sunt, provident harum architecto culpa beatae? Suscipit, rerum."
  end
end
